{
  normal = {
    esc = [
      "collapse_selection"
      "keep_primary_selection"
    ];

    C-g = [
      ":new"
      ":insert-output lazygit"
      ":buffer-close!"
      ":redraw"
    ];

    C-y = [
      ":sh rm -f /tmp/unique-file"
      ":insert-output yazi '%{buffer_name}' --chooser-file=/tmp/unique-file"
      ":sh printf '\x1b[?1049h\x1b[?2004h' > /dev/tty"
      ":open %sh{cat /tmp/unique-file}"
      ":redraw"
    ];
  };
}
