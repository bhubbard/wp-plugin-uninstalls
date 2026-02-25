#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_site_transient_update_plugins'
wp option delete '_site_transient_update_themes'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'eos_dp_activation_info'
wp option delete 'FreesoulDeactivatePluginsPRO_lic_Key'
wp option delete 'eos_dp_by_url'
wp option delete 'comingsoon_input_psw_email'
wp option delete 'eos_dp_user_options'
wp option delete 'eos_dp_archives'
wp option delete 'eos_dp_pro_edd_license_key'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'woocommerce_force_ssl_checkout'
wp option delete 'woocommerce_currency'
wp option delete 'eos_dp_new_plugin_activated'
wp option delete 'eos_dp_general_setts'
wp option delete 'eos_dp_search'
wp option delete 'eos_dp_mobile'
wp option delete 'eos_dp_one_place'
wp option delete 'eos_dp_browser'
wp option delete 'eos_post_types_plugins'
wp option delete 'eos_dp_need_custom_url'
wp option delete 'eos_dp_opts'
wp option delete 'eos_dp_version'
wp option delete 'eos_dp_parent_plugin_pages'
wp option delete 'eos_dp_admin_theme'
wp option delete 'eos_dp_admin_menu'
wp option delete 'eos_dp_admin_setts'
wp option delete 'eos_dp_admin_url_theme'
wp option delete 'eos_dp_by_admin_url'
wp option delete 'eos_dp_integration_actions'
wp option delete 'eos_dp_integretion_actions_theme'
wp option delete 'eos_dp_pro_main'
wp option delete 'eos_dp_roles_manager'
wp option delete 'eos_dp_admin_submenu'
wp option delete 'eos_dp_admin_page_hooks'
wp option delete 'fdp_code_profiler'
wp option delete 'fdp_plugin_slug_names'
wp option delete 'eos_dp_by_rest_api'
wp option delete 'fdp_site_id'
wp option delete 'fdp_last_save'
wp option delete 'fdp_addons'

# Delete Transients
wp transient delete 'update_themes'
wp transient delete 'fdp_update_check_response_body'
wp transient delete 'fdp_hireus_info'
wp transient delete 'update_plugins'
wp transient delete 'fdp_admin_notice_rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fdp_testing_nonce_%' OR option_name LIKE '_site_transient_fdp_testing_nonce_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eos_dp_all_count_%' OR option_name LIKE '_site_transient_eos_dp_all_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eos_dp_pro_scanning_unused_plugins%' OR option_name LIKE '_site_transient_eos_dp_pro_scanning_unused_plugins%'"
wp transient delete 'eos_dp_pro_scanning_unused_plugins_admin'
wp transient delete 'fdp_plugin_disabledd_fatal_error'
wp transient delete 'freesoul-dp-notice-succ'
wp transient delete 'freesoul-dp-updating-mu'
wp transient delete 'freesoul-dp-notice-fail'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fdp_query_menu_nonce_%' OR option_name LIKE '_site_transient_fdp_query_menu_nonce_%'"
wp transient delete 'eos_dp_pro_unique_id'
wp transient delete 'eos_dp_changelog_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__fdp_pro_post_nsg_%' OR option_name LIKE '_site_transient__fdp_pro_post_nsg_%'"
wp transient delete 'eos_dp_pro_scanning_unused_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fdp_admin_notice_%' OR option_name LIKE '_site_transient_fdp_admin_notice_%'"

# Clear Cron Jobs
wp cron event delete 'eos_dp_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eos_deactive_plugins_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eos_deactive_plugins_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eos_deactive_plugins_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eos_deactive_plugins_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdp_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdp_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdp_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdp_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eos_deactive_plugins_key_trashed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eos_deactive_plugins_key_trashed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eos_deactive_plugins_key_trashed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eos_deactive_plugins_key_trashed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdp_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdp_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdp_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdp_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdp_csp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdp_csp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdp_csp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdp_csp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdp_toplevel_admin_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdp_toplevel_admin_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdp_toplevel_admin_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdp_toplevel_admin_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eos_deactive_plugins_key_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eos_deactive_plugins_key_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eos_deactive_plugins_key_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eos_deactive_plugins_key_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_eos_deactive_plugins_key%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_eos_deactive_plugins_key%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_eos_deactive_plugins_key%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_eos_deactive_plugins_key%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
