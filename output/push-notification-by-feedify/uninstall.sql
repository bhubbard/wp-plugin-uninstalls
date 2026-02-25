-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('feedify_plugin_status', 'feedify_permalinks_flushed', 'feedify_domain_key', 'feedify_licence_key', 'feedify_public_key', 'feedify_enable_ssl', 'feedify_is_default_logo', 'feedify_is_banner_image', 'feedify_is_featured_logo', 'feedify_is_word_limit', 'feedify_is_msg_send', 'feedify_is_website_logo', 'feedify_set_site_name_as_title_post_notification', 'feedify_add_post_notification', 'feedify_edit_post_notification', 'custom_image_url_type', 'myprefix_image_id');
DELETE FROM wp_options WHERE option_name LIKE '%_custom_title';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_content';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('send_feedify_notification', 'feedify_notification_already_sent', 'schedule_send_feedify_notification');
DELETE FROM wp_usermeta WHERE meta_key IN ('send_feedify_notification', 'feedify_notification_already_sent', 'schedule_send_feedify_notification');
DELETE FROM wp_termmeta WHERE meta_key IN ('send_feedify_notification', 'feedify_notification_already_sent', 'schedule_send_feedify_notification');
DELETE FROM wp_commentmeta WHERE meta_key IN ('send_feedify_notification', 'feedify_notification_already_sent', 'schedule_send_feedify_notification');

