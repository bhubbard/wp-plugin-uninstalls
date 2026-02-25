-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ame_imgset', 'ame_show_orderoptions', 'ame_toggle_showinvisposts', 'ame_version');

