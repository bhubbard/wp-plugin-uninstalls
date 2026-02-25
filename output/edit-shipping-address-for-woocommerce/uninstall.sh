#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'editsafw_enable_address_edit'
wp option delete 'editsafw_max_address_changes'
wp option delete 'editsafw_allowed_order_statuses'
wp option delete 'editsafw_editable_shipping_fields'
wp option delete 'editsafw_shipping_email_template'
wp option delete 'editsafw_refund_email_template'
wp option delete 'woocommerce_stripe_settings'
wp option delete 'woocommerce-ppcp-settings'
wp option delete 'woocommerce-ppcp-data-common'
wp option delete 'woocommerce_razorpay_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
