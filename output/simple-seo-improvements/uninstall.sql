-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iworks_ssi_post_types', 'iworks_ssi_other_archives');
DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab';
DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp';
DELETE FROM wp_options WHERE option_name LIKE '%version';
DELETE FROM wp_options WHERE option_name LIKE '%flush_rules';
DELETE FROM wp_options WHERE option_name LIKE '%_base';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'custom_description', 'custom_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'custom_description', 'custom_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'custom_description', 'custom_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_yoast_wpseo_metadesc', '_yoast_wpseo_title', 'custom_description', 'custom_title');

