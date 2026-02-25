-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vsg_option', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'variation_swatches_and_gallery_dashboard_widget_news', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('variation_swatches_and_gallery__gallery_image_ids', 'vsg_help_notice_dismissed', 'pam_image_id', 'pam_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('variation_swatches_and_gallery__gallery_image_ids', 'vsg_help_notice_dismissed', 'pam_image_id', 'pam_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('variation_swatches_and_gallery__gallery_image_ids', 'vsg_help_notice_dismissed', 'pam_image_id', 'pam_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('variation_swatches_and_gallery__gallery_image_ids', 'vsg_help_notice_dismissed', 'pam_image_id', 'pam_color');

