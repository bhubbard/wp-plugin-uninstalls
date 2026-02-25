-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('athemes_blocks_enabled_blocks', 'athemes_blocks_dashboard_settings', 'woocommerce_enable_ajax_add_to_cart', 'downloaded_font_files', 'widget_block');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'atb_dashboard_notifications_latest_read', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'atb_dashboard_notifications_latest_read', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'atb_dashboard_notifications_latest_read', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'atb_dashboard_notifications_latest_read', 'thumbnail_id');

