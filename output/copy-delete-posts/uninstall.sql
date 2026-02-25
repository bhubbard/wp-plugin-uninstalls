-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_cdp_cool_installation', '_cdp_redirect', 'wp_mypopups_do_activation_redirect', 'sfsi_plugin_do_activation_redirect', '_bmi_redirect', 'irrp_activation_redirect', '_cdp_globals', '_cdp_review', '_cdp_mishmash', '_cdp_profiles', '_cdp_show_copy', '_cdp_crons', '_cdp_default_setup', '_tifm_feature_enabled', '_tifm_disable_feature_forever', '_tifm_hide_notice_forever', '_cdp_no_intro', '_cdp_preselections', 'cdp_dismiss_perf_notice', 'cdp_latest_slow_performance', 'cdp_copy_logs_times', '_irb_h_bn_review', 'hide_tastewp_notice', '_tifm_force_disable_feature_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cdp_origin', '_cdp_origin_site', '_elementor_data', '_thumbnail_id', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cdp_origin', '_cdp_origin_site', '_elementor_data', '_thumbnail_id', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cdp_origin', '_cdp_origin_site', '_elementor_data', '_thumbnail_id', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cdp_origin', '_cdp_origin_site', '_elementor_data', '_thumbnail_id', '_elementor_edit_mode');

