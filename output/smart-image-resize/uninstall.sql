-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_sir_plugin_version', 'wp_sir_settings', 'wp_sir_image_processor', 'wp_sir_prev_plugin_version', 'wp_sir_processed_attachments', 'wp_sir_review_request_notice_dismissed', 'wp_sir_plugin_installed_at', 'ppsir_settings', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'wp_sir_review_request_notice_remindme');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_processed_at', '_wp_attachment_metadata', '_old_image_meta', '_processed_by', 'dokan_enable_selling', 'woo_variation_gallery_images');
DELETE FROM wp_usermeta WHERE meta_key IN ('_processed_at', '_wp_attachment_metadata', '_old_image_meta', '_processed_by', 'dokan_enable_selling', 'woo_variation_gallery_images');
DELETE FROM wp_termmeta WHERE meta_key IN ('_processed_at', '_wp_attachment_metadata', '_old_image_meta', '_processed_by', 'dokan_enable_selling', 'woo_variation_gallery_images');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_processed_at', '_wp_attachment_metadata', '_old_image_meta', '_processed_by', 'dokan_enable_selling', 'woo_variation_gallery_images');

