#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_coupon_by_user_role_amount_section_enabled'
wp option delete 'alg_wc_coupon_by_user_role_amount_per_coupon'
wp option delete 'wpjup_wc_coupon_by_user_role_plugin_enabled'
wp option delete 'wpjup_wc_coupon_by_user_role_invalid_per_coupon'
wp option delete 'wpjup_wc_coupon_by_user_role_disabled'
wp option delete 'alg_wc_coupon_by_user_role_disabled_exceptions'
wp option delete 'wpjup_wc_coupon_by_user_role_invalid'
wp option delete 'alg_wc_coupon_by_user_role_invalid_exceptions'
wp option delete 'wpjup_wc_coupon_by_user_role_invalid_message'
wp option delete 'wpjup_wc_coupon_by_user_role_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alg_wc_coupon_by_user_role_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alg_wc_coupon_by_user_role_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alg_wc_coupon_by_user_role_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alg_wc_coupon_by_user_role_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
