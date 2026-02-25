-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taros_bot_id', 'taros_bot_name', 'taros_widget_enabled');

