#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getnet_admin_warning'
wp option delete 'woocommerce_getnet-billet_settings'
wp option delete 'woocommerce_getnet-creditcard_settings'
wp option delete 'woocommerce_getnet-pix_settings'
wp option delete 'wc_getnet_settings_environment'
wp option delete '_policy_privacy_accept'
wp option delete '_policy_privacy_accept_date'
wp option delete 'privacy_policy_information_displayed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_information_displayed'"

# Delete Transients
wp transient delete 'getnet_api_warning_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
