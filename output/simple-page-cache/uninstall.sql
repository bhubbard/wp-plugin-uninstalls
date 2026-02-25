-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simplepagecache_settings_filename', 'simplepagecache_show_activation_notice');

