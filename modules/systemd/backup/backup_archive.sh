#!/usr/bin/env sh

backup() {
  # $1 -> ARCHIVE_NAME
  # $2 -> ARCHIVE_DIR

  SRC_DIR="$2"
  FINAL_ARCHIVE="$DEST_DIR/$1.tgz"

  printf "backing up %s..." "$1"
  tar czf "$FINAL_ARCHIVE" -C "$SRC_DIR" .

  printf "\r\033[K"
  printf "created %s at %s.\n" "$1.tgz" "$FINAL_ARCHIVE"
}

# function usage:
# backup $ARCHIVE_NAME $ARCHIVE_DIR

printf "getting things ready...\n"

DEST_DIR="$HOME/Documents/Backup"
mkdir -p "$DEST_DIR"

# game data
backup "godot" "$XDG_DATA_HOME/godot"

# ssh keys
backup "ssh" "$XDG_DATA_HOME/ssh"

printf "backed up all files.\n"
