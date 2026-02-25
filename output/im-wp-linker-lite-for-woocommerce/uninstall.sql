-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('im-wp-linker-lite-active', 'im-wp-linker-lite-settings');

