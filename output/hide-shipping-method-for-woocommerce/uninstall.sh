#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'hide_shipping_option'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wbs_config'
wp option delete 'whsm_limited_allowed_rules'
wp option delete 'whsm_where_hear_about_us'
wp option delete 'whsm_data_submited_in_sendiblue'
wp option delete 'sm_sortable_order'
wp option delete 'whsm_hide_shipping_cart'
wp option delete 'hide_shipping_method_list'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'whsm_version'

# Delete Transients
wp transient delete '_welcome_screen_whsm_mode_activation_redirect_data'
wp transient delete 'whsm-hide-limit-notice'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'whsm-admin-notice'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'whsm_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'whsm_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'whsm_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'whsm_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_shipping_method_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_shipping_method_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_shipping_method_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_shipping_method_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'get_shipping_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'get_shipping_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'get_shipping_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'get_shipping_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'main_rule_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'main_rule_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'main_rule_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'main_rule_condition'"
