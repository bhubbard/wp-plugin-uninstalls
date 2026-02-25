-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('errp_license_server_url', 'errp_settings', 'errp_performance_data', 'errp_current_pricing');
DELETE FROM wp_options WHERE option_name LIKE 'errp_license_cache_%';
DELETE FROM wp_options WHERE option_name LIKE 'errp_license_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'errp_post_analysis_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

