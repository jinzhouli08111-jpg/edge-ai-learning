# ---- 基本配置 ----
TARGET  := __TARGET__
SRCS    := $(wildcard *.c)
OBJS    := $(SRCS:.c=.o)
DEPS    := $(SRCS:.c=.d)

CC      := gcc
CFLAGS  := -Wall -Wextra -O2 -g -MMD -MP
LDFLAGS :=
LDLIBS  := -lm

# ---- 默认目标 ----
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(LDFLAGS) $^ -o $@ $(LDLIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

-include $(DEPS)

# ---- 调试构建（不优化 + 内存检查）----
debug: CFLAGS += -O0 -g3 -fsanitize=address,undefined
debug: clean all

run: $(TARGET)
	./$(TARGET)

clean:
	rm -f $(OBJS) $(DEPS) $(TARGET)

.PHONY: all debug run clean
