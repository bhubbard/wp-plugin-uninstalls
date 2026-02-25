#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zacctmgr_selected_roles'
wp option delete 'zacctmgr_allowed_woo_statuses'
wp option delete 'zacctmgr_refund_commission_setting'
wp option delete 'zacctmgr_allowed_edit_commission_users'
wp option delete 'zacctmgr_user_allow_edit_commission_setting'
wp option delete 'zacctmgr_user_allow_edit_order_commission_setting'
wp option delete 'zacctmgr_allowed_edit_order_commission_users'
wp option delete 'zacctmgr_allowed_edit_others_commission_users'
wp option delete 'zacctmgr_user_allow_edit_others_commission_setting'
wp option delete 'zacctmgr_allowed_no'
wp option delete 'zacctmgr_default'
wp option delete 'zacctmgr_hide_settings_in_menu'
wp option delete 'zacctmgr_order_recalculate_commission'
wp option delete 'zacctmgr_user_access_settings'
wp option delete 'zacctmgr_v2_install_date'
wp option delete 'zacctmgr_acm_assignments_mapping_version'
wp option delete 'zacctmgr_acm_commissions_mapping_version'
wp option delete 'zacctmgr_acm_order_audit_mapping_version'
wp option delete 'zacctmgr_acm_manager_commission_audit_mapping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_assigned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_assigned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_assigned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_assigned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_assigned_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_assigned_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_assigned_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_assigned_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_account_manager'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_account_manager'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_account_manager'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_account_manager'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_commission_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_commission_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_commission_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_commission_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_commission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_commission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_commission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_commission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_new_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_new_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_new_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_new_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_existing_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_existing_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_existing_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_existing_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_new_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_new_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_new_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_new_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_existing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_existing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_existing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_existing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_order_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_new_exclude_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_new_exclude_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_new_exclude_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_new_exclude_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zacctmgr_commission_existing_exclude_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zacctmgr_commission_existing_exclude_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zacctmgr_commission_existing_exclude_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zacctmgr_commission_existing_exclude_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_money_spent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
