-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taknema_storage_method', 'taknema_filter_pages', 'taknema_post_types', 'taknema_custom_pages', 'taknema_enable_debug', 'taknema_exclude_categories', 'taknema_disable_tracking', 'taknema_version', 'taknema_activation_sent', 'taknema_last_check', 'taknema_activation_notice');

