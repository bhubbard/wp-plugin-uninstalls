#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moppm_email'
wp option delete 'moppm_customerKey'
wp option delete 'moppm_api_key'
wp option delete 'moppm_customer_token'
wp option delete 'moppm_verify_customer'
wp option delete 'company'
wp option delete 'moppm_admin_phone'
wp option delete 'moppm_registration_status'
wp option delete 'moppm_planname'
wp option delete 'moppm_pricing_page_visitor'
wp option delete 'moppm_activated_time'
wp option delete 'Moppm_enable_disable_ppm'
wp option delete 'moppm_dbversion'
wp option delete 'moppm_remove_offer_banner'
wp option delete 'moppm_plantype'
wp option delete 'moppm_enable_disable_report'
wp option delete 'no_of_of_attempt'
wp option delete 'moppm_letter'
wp option delete 'moppm_first_reset'
wp option delete 'moppm_Numeric_digit'
wp option delete 'moppm_enable_disable_expiry'
wp option delete 'moppm_special_char'
wp option delete 'moppm_digit'
wp option delete 'moppm_save_pass'
wp option delete 'email'
wp option delete 'customerKey'
wp option delete 'api_key'
wp option delete 'customer_token'
wp option delete 'verify_customer'
wp option delete 'registration_status'
wp option delete 'moppm_plugin_redirect'
wp option delete 'mo_ppm_message'
wp option delete 'mo_ppm_customer_selected_plan'
wp option delete 'moppm_expiration_time'
wp option delete 'moppm_disable_forget'
wp option delete 'moppm_prev_password_lim'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'moppm_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_url'"
wp option delete 'moppm_superadmin_login_url'
wp option delete 'moppm_all_users_method'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moppm_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moppm_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moppm_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moppm_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moppm_pass_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moppm_pass_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moppm_pass_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moppm_pass_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moppm_first_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moppm_first_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moppm_first_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moppm_first_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'moppm_last_pass_timestmp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'moppm_last_pass_timestmp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'moppm_last_pass_timestmp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'moppm_last_pass_timestmp'"
