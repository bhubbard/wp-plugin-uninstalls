#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_finmo_payments_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'finmo_checkout_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'finmo_checkout_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'finmo_checkout_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'finmo_checkout_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_finmo_is_refundable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_finmo_is_refundable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_finmo_is_refundable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_finmo_is_refundable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_finmo_is_partially_refundable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_finmo_is_partially_refundable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_finmo_is_partially_refundable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_finmo_is_partially_refundable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_finmo_checkout_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_finmo_checkout_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_finmo_checkout_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_finmo_checkout_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'finmo_refund_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'finmo_refund_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'finmo_refund_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'finmo_refund_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_finmo_refund_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_finmo_refund_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_finmo_refund_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_finmo_refund_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'finmo_checkout_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'finmo_checkout_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'finmo_checkout_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'finmo_checkout_url'"
