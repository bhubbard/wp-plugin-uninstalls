-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_directory_settings', 'active_sitewide_plugins', 'SDIR_VERSION_NUM');
DELETE FROM wp_options WHERE option_name LIKE 'sdir_taxonomy_image%';

