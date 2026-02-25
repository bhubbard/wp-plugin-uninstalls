-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simterm-command-prepend', 'simterm-type-prepend', 'simterm-default-delay', 'simterm-last-delay-time', 'simterm-default-theme', 'simterm-output-delay-time', 'simterm-typing-speed', 'simterm-transform-chars', 'simterm-window-title', 'simterm-window-statusbar', 'simterm-default-animated');

