#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_litcommerce_consumer_key'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_litcommerce_consumer_secret'

# Delete Transients
wp transient delete '_wc_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_litc_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_litc_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_litc_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_litc_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_litc_allow_send_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_litc_allow_send_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_litc_allow_send_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_litc_allow_send_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_litc_allow_send_email_owner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_litc_allow_send_email_owner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_litc_allow_send_email_owner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_litc_allow_send_email_owner'"
