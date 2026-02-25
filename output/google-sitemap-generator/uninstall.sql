-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sm_rewrite_done', 'sm_options', 'sm_show_beta_banner', 'sm_beta_banner_discarded_on', 'sm_beta_banner_discarded_count', 'sm_beta_notice_dismissed_from_wp_admin', 'sm_user_consent', 'auto_update_plugins', 'sm_hide_auto_update_banner', 'wpseo', 'aioseo_options', 'jetpack_active_modules', 'gsg_indexnow-is_valid_api_key', 'gsg_indexnow-admin_api_key', 'sm_status', 'sm_disabe_other_plugin', 'sm_beta_opt_in', 'sm_cpages', 'sm_ping_post_id');

