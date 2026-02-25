-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pose_plugin_advanced_buffer_limit', 'pose_plugin_advanced_zk_tsize', 'pose_plugin_advanced_zk_semaphore', 'pose_plugin_advanced_zk_cycle', 'pose_plugin_options_logger', 'pose_plugin_options_podd', 'pose_plugin_options_geoip', 'pose_plugin_options_usecdn', 'pose_plugin_options_nag', 'pose_plugin_messages_fallback', 'pose_plugin_messages_blocked_message', 'pose_plugin_messages_bad_ip_message', 'pose_plugin_features_rolemode', 'pose_plugin_features_forceip', 'pose_plugin_features_followip', 'pose_plugin_features_killonreset', 'pose_plugin_features_analytics', 'pose_plugin_features_history', 'pose_plugin_features_metrics', 'auto_update_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_block_%';
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_maxip_%';
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_limit_%';
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_method_%';
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_idle_%';
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_cookie-ttl_%';
DELETE FROM wp_options WHERE option_name LIKE 'pose_plugin_roles_cookie-rttl_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

