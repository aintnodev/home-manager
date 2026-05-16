#!/usr/bin/env sh

backup() {
  # $1 -> ARCHIVE_NAME
  # $2 -> ARCHIVE_DIR

  ARCHIVE_NAME="$1"
  SRC_DIR="$2"
  FINAL_ARCHIVE="$DEST_DIR/$ARCHIVE_NAME.tgz"

  printf "backing up %s..." "$ARCHIVE_NAME"
  tar czf "$FINAL_ARCHIVE" -C "$SRC_DIR" .

  printf "\r\033[K"
  printf "created %s at %s.\n" "$ARCHIVE_NAME.tgz" "$FINAL_ARCHIVE"
}

# function usage:
# backup $ARCHIVE_NAME $ARCHIVE_DIR

printf "Getting things ready...\n"

DEST_DIR="/tmp/Backup"
mkdir -p "$DEST_DIR"

# game data
backup "godot" "$XDG_DATA_HOME/godot"

# ssh keys
backup "ssh" "$HOME/.ssh"

printf "All files backed up.\n"
