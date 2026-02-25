-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jetpack_active_modules', 'powerkit_enabled_lazyload', 'theme_mods_flatsome-child', 'woocs_shop_is_cached', 'FLYING_PRESS_CONFIG', 'siteground_optimizer_combine_css', 'wpassetcleanup_settings', 'fusion_options', 'asp_compatibility', 'rabbit_loader_user_options', 'rabbit_loader_wp_options', 'gd_system_last_cache_flush', 'rabbitloader_cdn_prefix', 'rabbitloader_do_activation_redirect', 'rabbitloader_trans_overview_data', 'rabbitloader_knowlegebase_data');
DELETE FROM wp_options WHERE option_name LIKE 'et_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rl_survey_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('rl_survey_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('rl_survey_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rl_survey_dismissed');

