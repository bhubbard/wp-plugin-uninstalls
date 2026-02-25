-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taboola_recent_notifications', 'taboola_push_server_client_id', 'taboola_push_server_client_key', 'taboola_push_default_thumbnail', 'taboola_push_manual_title', 'taboola_push_manual_message', 'taboola_push_manual_url', 'taboola_push_manual_icon', 'taboola_push_manual_url_selector', 'taboola_epsilon_base_url_override', 'taboola_selected_theme', 'taboola_test_notification', 'taboola_push_server_apps', 'taboola_push_server_health_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_taboola_push_app_id', '_taboola_push_enabled', '_taboola_push_customize', '_taboola_push_title', '_taboola_push_message', '_taboola_push_icon', '_taboola_push_auto_send');
DELETE FROM wp_usermeta WHERE meta_key IN ('_taboola_push_app_id', '_taboola_push_enabled', '_taboola_push_customize', '_taboola_push_title', '_taboola_push_message', '_taboola_push_icon', '_taboola_push_auto_send');
DELETE FROM wp_termmeta WHERE meta_key IN ('_taboola_push_app_id', '_taboola_push_enabled', '_taboola_push_customize', '_taboola_push_title', '_taboola_push_message', '_taboola_push_icon', '_taboola_push_auto_send');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_taboola_push_app_id', '_taboola_push_enabled', '_taboola_push_customize', '_taboola_push_title', '_taboola_push_message', '_taboola_push_icon', '_taboola_push_auto_send');

