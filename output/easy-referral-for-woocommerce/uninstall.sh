#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'erwc_opt_salt'
wp option delete 'erwc_opt_codes_total'
wp option delete 'erwc_opt_ip_comparing_status_default'
wp option delete 'erwc_opt_cookie_searching_status_default'
wp option delete 'erwc_opt_auth_reliable_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'erwc_auth_checking_enable_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'erwc_auth_checking_status_%'"
wp option delete 'erwc_opt_auth_not_reliable_status'
wp option delete 'erwc_opt_enable'
wp option delete 'erwc_opt_interface_referral_codes_dashboard'
wp option delete 'erwc_authenticity_status_terms'
wp option delete 'erwc_referral_checking_terms'
wp option delete 'erwc_opt_code_enabled'
wp option delete 'erwc_opt_code_reward_type'
wp option delete 'erwc_opt_code_reward_value'
wp option delete 'erwc_opt_code_coupon'
wp option delete 'erwc_opt_code_coupon_apply'
wp option delete 'erwc_opt_code_coupon_copy_restrictions'
wp option delete 'erwc_opt_referee_usage_limit'
wp option delete 'erwc_opt_referral_status'
wp option delete 'c'
wp option delete 'erwc_referral_status_terms'
wp option delete 'recently_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erwc_referrer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erwc_referrer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erwc_referrer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erwc_referrer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erwc_checking_reports'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erwc_checking_reports'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erwc_checking_reports'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erwc_checking_reports'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erwc_referrer_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erwc_referrer_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erwc_referrer_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erwc_referrer_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erwc_total_reward_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erwc_total_reward_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erwc_total_reward_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erwc_total_reward_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erwc_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erwc_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erwc_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erwc_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_erwc_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_erwc_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_erwc_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_erwc_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
