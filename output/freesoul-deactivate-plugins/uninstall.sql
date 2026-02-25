-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_site_transient_update_plugins', '_site_transient_update_themes', 'active_sitewide_plugins', 'eos_dp_activation_info', 'FreesoulDeactivatePluginsPRO_lic_Key', 'eos_dp_by_url', 'comingsoon_input_psw_email', 'eos_dp_user_options', 'eos_dp_archives', 'eos_dp_pro_edd_license_key', 'woocommerce_currency_pos', 'woocommerce_force_ssl_checkout', 'woocommerce_currency', 'eos_dp_new_plugin_activated', 'eos_dp_general_setts', 'eos_dp_search', 'eos_dp_mobile', 'eos_dp_one_place', 'eos_dp_browser', 'eos_post_types_plugins', 'eos_dp_need_custom_url', 'eos_dp_opts', 'eos_dp_version', 'eos_dp_parent_plugin_pages', 'eos_dp_admin_theme', 'eos_dp_admin_menu', 'eos_dp_admin_setts', 'eos_dp_admin_url_theme', 'eos_dp_by_admin_url', 'eos_dp_integration_actions', 'eos_dp_integretion_actions_theme', 'eos_dp_pro_main', 'eos_dp_roles_manager', 'eos_dp_admin_submenu', 'eos_dp_admin_page_hooks', 'fdp_code_profiler', 'fdp_plugin_slug_names', 'eos_dp_by_rest_api', 'fdp_site_id', 'fdp_last_save', 'fdp_addons', 'update_themes', 'fdp_update_check_response_body', 'fdp_hireus_info', 'update_plugins', 'fdp_admin_notice_rewrite_rules', 'eos_dp_pro_scanning_unused_plugins_admin', 'fdp_plugin_disabledd_fatal_error', 'freesoul-dp-notice-succ', 'freesoul-dp-updating-mu');
DELETE FROM wp_options WHERE option_name IN ('freesoul-dp-notice-fail', 'eos_dp_pro_unique_id', 'eos_dp_changelog_version', 'eos_dp_pro_scanning_unused_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'fdp_testing_nonce_%';
DELETE FROM wp_options WHERE option_name LIKE 'eos_dp_all_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'eos_dp_pro_scanning_unused_plugins%';
DELETE FROM wp_options WHERE option_name LIKE 'fdp_query_menu_nonce_%';
DELETE FROM wp_options WHERE option_name LIKE '_fdp_pro_post_nsg_%';
DELETE FROM wp_options WHERE option_name LIKE 'fdp_admin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_eos_deactive_plugins_key', 'fdp_admin_notices', '_eos_deactive_plugins_key_trashed', 'fdp_metabox', 'fdp_csp', 'fdp_toplevel_admin_menu', '_eos_deactive_plugins_key_draft', 'eos_scfm_mobile_post_id', 'wp_capabilities', 'locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_eos_deactive_plugins_key', 'fdp_admin_notices', '_eos_deactive_plugins_key_trashed', 'fdp_metabox', 'fdp_csp', 'fdp_toplevel_admin_menu', '_eos_deactive_plugins_key_draft', 'eos_scfm_mobile_post_id', 'wp_capabilities', 'locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_eos_deactive_plugins_key', 'fdp_admin_notices', '_eos_deactive_plugins_key_trashed', 'fdp_metabox', 'fdp_csp', 'fdp_toplevel_admin_menu', '_eos_deactive_plugins_key_draft', 'eos_scfm_mobile_post_id', 'wp_capabilities', 'locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_eos_deactive_plugins_key', 'fdp_admin_notices', '_eos_deactive_plugins_key_trashed', 'fdp_metabox', 'fdp_csp', 'fdp_toplevel_admin_menu', '_eos_deactive_plugins_key_draft', 'eos_scfm_mobile_post_id', 'wp_capabilities', 'locale');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_eos_deactive_plugins_key%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_eos_deactive_plugins_key%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_eos_deactive_plugins_key%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_eos_deactive_plugins_key%';

