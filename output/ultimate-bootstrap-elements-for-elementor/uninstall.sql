-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ube_integrated_api', 'ube_default_color_previous');
DELETE FROM wp_options WHERE option_name LIKE '%_tf_token';
DELETE FROM wp_options WHERE option_name LIKE '%_tf_cache';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wp_page_template');

