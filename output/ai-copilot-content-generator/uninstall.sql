-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_from_name', 'woocommerce_email_from_address', 'wpmuclone_default_blog');
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_activation_errors';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%db_installed';
DELETE FROM wp_options WHERE option_name LIKE '%first_activation';
DELETE FROM wp_options WHERE option_name LIKE '%plug_was_used';
DELETE FROM wp_options WHERE option_name LIKE '%_full_installed';
DELETE FROM wp_options WHERE option_name LIKE '%_options_plugin';
DELETE FROM wp_options WHERE option_name LIKE '%first_activation_pro';
DELETE FROM wp_options WHERE option_name LIKE '%_guide_step';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_thumbnail_id', 'rating');

