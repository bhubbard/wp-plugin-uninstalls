#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'refersion_settings'
wp option delete 'refersion_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_period_interval'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_sign_up_fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_sign_up_fee'"
