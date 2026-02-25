#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gc_ob_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gc_ob_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gc_ob_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gc_ob_payment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gc_ob_payment_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gc_ob_payment_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gc_ob_payment_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gc_ob_payment_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gc_ob_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gc_ob_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gc_ob_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gc_ob_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gc_ob_billing_request_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gc_ob_billing_request_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gc_ob_billing_request_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gc_ob_billing_request_id'"
