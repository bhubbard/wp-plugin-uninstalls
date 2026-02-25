-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iplocator_plugin_options_override', 'iplocator_plugin_options_zlib', 'iplocator_plugin_features_autoupdate', 'iplocator_plugin_options_logger', 'iplocator_plugin_options_podd', 'iplocator_plugin_options_usecdn', 'iplocator_plugin_options_nag', 'iplocator_plugin_features_analytics', 'iplocator_plugin_features_history', 'iplocator_plugin_features_metrics', 'iplocator_plugin_features_shortcode', 'iplocator_plugin_features_css', 'auto_update_plugins', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count', 'update_plugins');

