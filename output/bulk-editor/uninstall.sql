-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbe_show_text_editor', 'wpbe_site_separate_settings', 'wpbe_site_editors_post_types', 'wpbe_site_editor_visibility', 'wpbe_rate_alert');
DELETE FROM wp_options WHERE option_name LIKE 'wpbe_options_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_product_attributes', 'wpbe_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_product_attributes', 'wpbe_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_product_attributes', 'wpbe_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_product_attributes', 'wpbe_notice_dismissed');

