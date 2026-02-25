-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bie_license', 'bie_hide_setup_notice', 'bie_settings', 'bie_hide_redirects_plugin_notice', 'bie_installed_date');
DELETE FROM wp_options WHERE option_name LIKE 'bie_blogspot_domain_%';
DELETE FROM wp_options WHERE option_name LIKE 'bie_page_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id');

