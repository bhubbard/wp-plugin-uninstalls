-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lws_optimize_deactivate_temporarily', 'lws_optimize_offline', 'lws_optimize_config_array', 'lws_optimize_sitemap_urls', 'lws_optimize_preload_is_ongoing', 'lws_optimize_pagespeed_history', 'lws_optimize_cache_statistics', 'lws_optimize_original_image', 'lws_optimize_images_convertion', 'lws_optimize_current_convertion_stats', 'lws_optimize_all_media_convertion', 'lws_optimize_image_autoconversion_options', 'lws_optimize_image_conversion_options', 'lws_optimize_image_api_key', 'lws_from_autoinstall_optimize', 'wp_lwsoptimize_post_update', 'lwsop_do_not_ask_again', 'lws_opti_memcaching_on', 'lwsop_autopurge', 'lws_op_deactivated', 'lws_op_change_max_width_media', 'lws_op_fb_cache', 'lws_op_fb_exclude', 'lws_op_fb_preload_state', 'polylang', 'active_sitewide_plugins', 'lwsop_plugin_version', 'lws_optimize_conversion_lock', 'lwsop_remind_me');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_metadata');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file', '_wp_attachment_metadata');

