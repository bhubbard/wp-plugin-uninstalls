#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_orders_endpoint'
wp option delete 'woocommerce_myaccount_downloads_endpoint'
wp option delete 'woocommerce_myaccount_edit_address_endpoint'
wp option delete 'woocommerce_myaccount_payment_methods_endpoint'
wp option delete 'woocommerce_myaccount_edit_account_endpoint'
wp option delete 'woocommerce_logout_endpoint'
wp option delete 'woocommerce_myaccount_subscriptions_endpoint'
wp option delete 'woocommerce_myaccount_teams_area_endpoint'
wp option delete 'tgwc_flush_rewrite'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'tgwc_customize'
wp option delete 'tgwc_my_account_file_version'
wp option delete 'tgwc_debug_settings'
wp option delete 'tgwc_settings'
wp option delete 'tgwc_endpoints'
wp option delete 'tgwc_flat_settings_migrated'
wp option delete 'tgwc_version'
wp option delete 'tgwc_added_default_custom_endpoint'

# Delete Transients
wp transient delete 'tgwc_active_endpoint'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgwc_avatar_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgwc_avatar_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgwc_avatar_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgwc_avatar_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%country'"
