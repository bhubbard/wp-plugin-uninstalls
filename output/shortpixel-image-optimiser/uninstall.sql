-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bulkProcessingStatus', 'spio_site_delivery', 'spio_settings', 'active_sitewide_plugins', 'jetpack_active_modules', 'litespeed.conf.img_optm-webp', 'wp-short-pixel-bulk-previous-percent', 'wp-short-pixel-activation-date', 'wp-short-pixel-current-total-files', 'wp-short-pixel-activation-notice', 'wp-short-pixel-bulk-last-status', 'wp-short-pixel-remove-settings-on-delete-plugin', 'spio_settings_ai_example', 'spio_settings_ai_example_id', 'bulk-secret', 'othermedia_refresh_folder_delay', 'avif_server_check', 'quotaData');
DELETE FROM wp_options WHERE option_name LIKE '%-notices';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortpixel_alt_requests', '_shortpixel_was_converted', 'wp_media_library_mode', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_shortpixel_prevent_optimize', '_shortpixel_status', '_frm_temporary');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortpixel_alt_requests', '_shortpixel_was_converted', 'wp_media_library_mode', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_shortpixel_prevent_optimize', '_shortpixel_status', '_frm_temporary');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortpixel_alt_requests', '_shortpixel_was_converted', 'wp_media_library_mode', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_shortpixel_prevent_optimize', '_shortpixel_status', '_frm_temporary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortpixel_alt_requests', '_shortpixel_was_converted', 'wp_media_library_mode', '_wp_attachment_image_alt', '_wp_attachment_metadata', '_shortpixel_prevent_optimize', '_shortpixel_status', '_frm_temporary');

