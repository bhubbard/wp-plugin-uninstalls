-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'wpl_auto_tour', 'wpl_version', 'wpl_basic_migration', 'wpl_addon_idx_user_credentials', 'wpl_addon_idx_user_steps_done', 'wpl_addon_idx_mls_data', 'wpl_addon_idx_download_images', 'wpl_addon_idx_user_config_status', 'wpl_idx_addon_saved_trial_pids', 'wpl_idx_addon_trial_imported', 'wpl_addon_idx_trial_reseted', 'wpl_addon_facebook_init_info', 'wpl_addon_facebook_catalog_id', 'wpl_facebook_addon_property_list');
DELETE FROM wp_options WHERE option_name LIKE 'wpl_gmap_hits_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpl_gmap_hits_date_%';

