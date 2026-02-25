#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_swish_settings'
wp option delete 'swish_northmill_notice_displayed_2'
wp option delete 'swish_refresh_token'

# Delete Transients
wp transient delete 'swish_access_token'
wp transient delete 'swish_notices'
wp transient delete 'swish_activated_or_upgraded'
wp transient delete 'handle_swish_account'
wp transient delete 'swish_retrieve_payment_info'
wp transient delete 'swish_activated'
wp transient delete 'swish_did_show_connection_info'
wp transient delete 'swish_did_show_legacy_info'
wp transient delete 'swish_upgraded'
wp transient delete 'swish_connect_result'
wp transient delete 'swish_activation_time'
wp transient delete 'swish_upgraded_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swish_purchase_age_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swish_purchase_age_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swish_purchase_age_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swish_purchase_age_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
