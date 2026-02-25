-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('otw_pm_portfolio_details', 'otw_pm_lists', 'otw_pm_plugin_options', 'otw_pml_rewrite_rules', 'otw_upd_plug', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'otw_lc_%';
DELETE FROM wp_options WHERE option_name LIKE '%_dnms';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('otw_pm_meta_data', 'otw_pm_tabs_meta_data', 'otw_pm_options_meta_data', 'otw_pm_light_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('otw_pm_meta_data', 'otw_pm_tabs_meta_data', 'otw_pm_options_meta_data', 'otw_pm_light_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('otw_pm_meta_data', 'otw_pm_tabs_meta_data', 'otw_pm_options_meta_data', 'otw_pm_light_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('otw_pm_meta_data', 'otw_pm_tabs_meta_data', 'otw_pm_options_meta_data', 'otw_pm_light_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'otw_pm_portfolio_detail_%';

