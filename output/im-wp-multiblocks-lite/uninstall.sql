-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('im-wp-lite-mb-active', 'im-wp-lite-mb-settings');

