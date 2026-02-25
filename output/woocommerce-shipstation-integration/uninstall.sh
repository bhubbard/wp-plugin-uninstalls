#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wc_shipstation_hide_activate_notice'
wp option delete 'woocommerce_shipstation_auth_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_shipstation-setup_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_shipstation-setup_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_shipstation-setup_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_shipstation-setup_notice'"
