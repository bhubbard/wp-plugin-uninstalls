#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmembers_dialogs'
wp option delete 'wpmem_dismiss_filesystem_upgrade_notice'
wp option delete 'wpmembers_utfields'
wp option delete 'wpmembers_usfields'
wp option delete 'wpmembers_captcha'
wp option delete 'wpmembers_tos'
wp option delete 'wpmembers_dropins'
wp option delete 'wpmembers_email_wpfrom'
wp option delete 'wpmembers_email_wpname'
wp option delete 'wpmembers_email_html'
wp option delete 'wpmembers_fields'
wp option delete 'wpmembers_wcchkout_fields'
wp option delete 'wpmembers_wcacct_fields'
wp option delete 'wpmembers_wcupdate_fields'
wp option delete 'wpmem_upgrade_filesystem_move_complete'
wp option delete 'wpmem_legacy_dialogs'
wp option delete 'wpmembers_settings'
wp option delete 'wpmembers_optin'
wp option delete 'wpmem_file_dir_hash'
wp option delete 'wpmem_memberships'
wp option delete 'wpmem_hidden_posts'
wp option delete 'wpmembers_install_state'
wp option delete 'wpmem_enable_field_sc'
wp option delete 'wpmembers_msurl'
wp option delete 'wpmembers_regurl'
wp option delete 'wpmembers_logurl'
wp option delete 'wpmembers_cssurl'
wp option delete 'wpmembers_style'
wp option delete 'wpmembers_autoex'
wp option delete 'wpmembers_attrib'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license'"
wp option delete 'wpmembers_export'
wp option delete 'wpmembers_email_newreg'
wp option delete 'wpmembers_email_newmod'
wp option delete 'wpmembers_email_appmod'
wp option delete 'wpmembers_email_repass'
wp option delete 'wpmembers_email_footer'
wp option delete 'wpmembers_email_notify'
wp option delete 'wpmembers_email_getuser'
wp option delete 'wpmembers_email_validated'
wp option delete 'widget_widget_wpmemwidget'
wp option delete 'widget_wpmemwidget'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpmem_user_counts_%' OR option_name LIKE '_site_transient_wpmem_user_counts_%'"
wp transient delete 'wpmem_user_counts'
wp transient delete '_wpmem_hidden_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmem_block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'block'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'unblock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'unblock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'unblock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'unblock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmem_user_confirmed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmem_user_confirmed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmem_user_confirmed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmem_user_confirmed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_child_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_child_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_child_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_child_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_no_gap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_no_gap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_no_gap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_no_gap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_product_fixed_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_product_fixed_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_product_fixed_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_product_fixed_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmem_product_set_default_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmem_product_set_default_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmem_product_set_default_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmem_product_set_default_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmem_activation_confirm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmem_activation_confirm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmem_activation_confirm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmem_activation_confirm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_user_dir_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_user_dir_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_user_dir_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_user_dir_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exp_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exp_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exp_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exp_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_reg_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_reg_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_reg_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_reg_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmem_reg_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmem_reg_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmem_reg_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmem_reg_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'exported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'exported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'exported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'exported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpmem_products_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpmem_products_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpmem_products_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpmem_products_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpmem_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpmem_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpmem_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpmem_products'"
