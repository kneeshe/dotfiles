# Configurações do compilador
CC = gcc
CFLAGS = -Wall -Wextra -Werror -std=c99 -O2 -g
LDFLAGS = 

# Diretórios
SRCDIR = src
BUILDDIR = build
OBJDIR = $(BUILDDIR)/obj

# Arquivos
SOURCES = $(wildcard $(SRCDIR)/*.c)
OBJECTS = $(SOURCES:$(SRCDIR)/%.c=$(OBJDIR)/%.o)
TARGET = $(BUILDDIR)/main

# Cores para output
RED = \033[0;31m
GREEN = \033[0;32m
YELLOW = \033[1;33m
NC = \033[0m # No Color

# Regra padrão
.PHONY: all clean debug release run help install

all: $(TARGET)

# Compilação do executável
$(TARGET): $(OBJECTS) | $(BUILDDIR)
	@echo "$(GREEN)[LINK]$(NC) Linking $@"
	@$(CC) $(OBJECTS) -o $@ $(LDFLAGS)
	@echo "$(GREEN)[SUCCESS]$(NC) Build completed: $@"

# Compilação dos objetos
$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	@echo "$(YELLOW)[CC]$(NC) Compiling $<"
	@$(CC) $(CFLAGS) -c $< -o $@

# Criação de diretórios
$(BUILDDIR):
	@mkdir -p $(BUILDDIR)

$(OBJDIR):
	@mkdir -p $(OBJDIR)

# Build de debug (com símbolos de debug e sem otimização)
debug: CFLAGS = -Wall -Wextra -Werror -std=c99 -g -DDEBUG -O0
debug: clean $(TARGET)
	@echo "$(GREEN)[DEBUG]$(NC) Debug build completed"

# Build de release (otimizado)
release: CFLAGS = -Wall -Wextra -Werror -std=c99 -O3 -DNDEBUG
release: clean $(TARGET)
	@echo "$(GREEN)[RELEASE]$(NC) Release build completed"

# Executar o programa
run: $(TARGET)
	@echo "$(GREEN)[RUN]$(NC) Executing $(TARGET)"
	@./$(TARGET)

# Limpeza
clean:
	@echo "$(RED)[CLEAN]$(NC) Removing build files"
	@rm -rf $(BUILDDIR)

# Instalação (opcional)
install: release
	@echo "$(GREEN)[INSTALL]$(NC) Installing to /usr/local/bin"
	@sudo cp $(TARGET) /usr/local/bin/main

# Análise estática com cppcheck (se disponível)
check:
	@if command -v cppcheck >/dev/null 2>&1; then \
		echo "$(YELLOW)[CHECK]$(NC) Running static analysis"; \
		cppcheck --enable=all --std=c99 $(SRCDIR)/; \
	else \
		echo "$(RED)[ERROR]$(NC) cppcheck not found. Install with: sudo apt install cppcheck"; \
	fi

# Formatação de código (se clang-format disponível)
format:
	@if command -v clang-format >/dev/null 2>&1; then \
		echo "$(YELLOW)[FORMAT]$(NC) Formatting source files"; \
		clang-format -i $(SOURCES); \
	else \
		echo "$(RED)[ERROR]$(NC) clang-format not found. Install with: sudo apt install clang-format"; \
	fi

# Informações do projeto
info:
	@echo "$(GREEN)Project Information:$(NC)"
	@echo "  Compiler: $(CC)"
	@echo "  Flags: $(CFLAGS)"
	@echo "  Sources: $(SOURCES)"
	@echo "  Objects: $(OBJECTS)"
	@echo "  Target: $(TARGET)"

# Ajuda
help:
	@echo "$(GREEN)Available targets:$(NC)"
	@echo "  all      - Build the project (default)"
	@echo "  debug    - Build with debug symbols and no optimization"
	@echo "  release  - Build optimized for release"
	@echo "  run      - Build and run the program"
	@echo "  clean    - Remove all build files"
	@echo "  install  - Install the program to /usr/local/bin"
	@echo "  check    - Run static analysis (requires cppcheck)"
	@echo "  format   - Format source code (requires clang-format)"
	@echo "  info     - Show project information"
	@echo "  help     - Show this help message"
