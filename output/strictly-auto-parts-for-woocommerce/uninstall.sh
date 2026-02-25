#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_ignored_sap_sku'
wp option delete 'wc_pick_code_for_sap'
wp option delete 'wc_ignored_world_sap_sku'
wp option delete 'wc_shipment_email_status'
wp option delete 'wc_shipment_email_content'
wp option delete 'wc_shipment_email_header'
wp option delete 'wc_shipment_email_subject'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipped_by_sap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipped_by_sap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipped_by_sap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipped_by_sap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_total_refund_order_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_total_refund_order_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_total_refund_order_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_total_refund_order_items'"
