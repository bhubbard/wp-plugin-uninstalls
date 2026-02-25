-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcvip_display_style_migrated', 'wcvip_display_style', 'wcvip_deactivation_feedback_log', 'wcvip_lazy_load', 'wcvip_show_badge', 'wcvip_image_limit', 'wcvip_use_attribute_sections', 'wcvip_out_of_stock_action', 'wcvip_attribute_styles', 'wcvip_display_in_dropdown', 'wcvip_display_thumbnails', 'wcvip_cdn_enabled', 'wcvip_cdn_url', 'wcvip_enable_shop', 'wcvip_buttons_orientation', 'wcvip_security_logging_enabled', 'wcvip_security_logging_database', 'wcvip_security_log_retention_days', 'wcvip_delete_data_on_uninstall', 'wcvip_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcvip_images', '_thumbnail_id', '_wcvip_display_style', '_wcvip_designer_layout', 'wcvip_color', '_wp_attachment_image_alt', '_wcvip_attribute_styles');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcvip_images', '_thumbnail_id', '_wcvip_display_style', '_wcvip_designer_layout', 'wcvip_color', '_wp_attachment_image_alt', '_wcvip_attribute_styles');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcvip_images', '_thumbnail_id', '_wcvip_display_style', '_wcvip_designer_layout', 'wcvip_color', '_wp_attachment_image_alt', '_wcvip_attribute_styles');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcvip_images', '_thumbnail_id', '_wcvip_display_style', '_wcvip_designer_layout', 'wcvip_color', '_wp_attachment_image_alt', '_wcvip_attribute_styles');

