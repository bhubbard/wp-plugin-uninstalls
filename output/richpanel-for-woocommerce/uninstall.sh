#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_key'
wp option delete 'api_secret'
wp option delete 'richpanel_woo_analytics'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_shipment_tracking_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wf_canadapost_shipment_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wf_canadapost_shipment_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wf_canadapost_shipment_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wf_canadapost_shipment_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wccf_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wccf_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wccf_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wccf_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
