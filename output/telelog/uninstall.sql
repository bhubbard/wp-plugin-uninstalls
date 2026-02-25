-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('telelog_api_key', 'telelog_chat_id', 'telelog_on_post_update', 'telelog_on_post_publish', 'telelog_on_post_comment', 'telelog_on_login_fail', 'telelog_on_register_user', 'telelog_on_theme_switch', 'telelog_on_plugin_activate', 'telelog_on_plugin_deactivate', 'telelog_on_woocommerce_order_new');

