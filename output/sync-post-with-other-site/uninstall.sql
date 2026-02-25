-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sps_plugin', 'sps_version', 'sps_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sps_website', 'sps_featured_image_url', 'old_site_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('sps_website', 'sps_featured_image_url', 'old_site_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('sps_website', 'sps_featured_image_url', 'old_site_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sps_website', 'sps_featured_image_url', 'old_site_url');

