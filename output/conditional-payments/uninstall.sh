#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dscpw_enable_debug'
wp option delete 'dscpw_sortable_order'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete '_welcome_screen_dscpw_mode_activation_redirect_data'
wp transient delete 'dscpw_name_address_fields'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sm_product_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dscpw_cp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dscpw_cp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dscpw_cp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dscpw_cp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_method_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cost_rule_match'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_actions_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_actions_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_actions_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_actions_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cp_message_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cp_message_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cp_message_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cp_message_metabox'"
