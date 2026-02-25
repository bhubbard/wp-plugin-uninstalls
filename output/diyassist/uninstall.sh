#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'diyassist_api_checkbox'
wp option delete 'diyassist_publishkey'
wp option delete 'diyassist_securitytoken'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_diy_credit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_diy_credit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_diy_credit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_diy_credit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_diy_discount_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_diy_discount_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_diy_discount_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_diy_discount_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diy_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diy_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diy_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diy_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diyassist_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diyassist_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diyassist_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diyassist_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'diy_msg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'diy_msg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'diy_msg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'diy_msg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
