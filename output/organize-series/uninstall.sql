-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orgseries_grouping_version', 'orgseries_grouping_import_completed', 'org_series_options', 'pp_series_taxonomy_slug', 'pps_post_list_box_defaults_created', 'pps_post_navigation_defaults_created', 'pps_post_navigation_default_id', 'im_unpublished_series', 'im_published_series', 'orgseries_plugin_activation_errors', 'orgseries_install_key', 'pp_series_2_7_1_upgraded', 'pp_series_2_8_0_upgraded', 'pp_series_2_10_0_upgraded', 'pp_series_2_10_0_1_upgraded', 'pp_series_2_11_1_upgraded', 'series_icon_path', 'series_icon_url', 'series_icon_filetypes', 'publishpress_multi_series_supported', 'orgseries_update_message', 'os_multi_import', 'org_series_version', 'orgseries_version', 'org_series_oldversion', 'series_has_been_fixed', '_split_terms', 'active_sitewide_plugins', 'org_series_is_initialized', 'orgSeries_latest_series_widget', 'orgSeries_widget', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'orgser_grp_upgrade_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%layout_meta_value';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%layout_meta_value';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%layout_meta_value';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%layout_meta_value';

