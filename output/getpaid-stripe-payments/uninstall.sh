#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'getpaid_stripe_migrated_keys'
wp option delete 'wpinv_stripe_redirected_to_settings'
wp option delete 'wpinv_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpaid_stripe_checkout_session_id_%' OR option_name LIKE '_site_transient_getpaid_stripe_checkout_session_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpaid_stripe_checkout_session_url_%' OR option_name LIKE '_site_transient_getpaid_stripe_checkout_session_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpaid_stripe_setup_intent_%' OR option_name LIKE '_site_transient_getpaid_stripe_setup_intent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_getpaid_stripe_setup_intent_secret_%' OR option_name LIKE '_site_transient_getpaid_stripe_setup_intent_secret_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_stripe_intent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_stripe_intent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_stripe_intent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_stripe_intent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_stripe_process_intent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_stripe_process_intent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_stripe_process_intent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_stripe_process_intent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_stripe_intent_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_stripe_intent_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_stripe_intent_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_stripe_intent_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_stripe_intent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_stripe_intent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_stripe_intent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_stripe_intent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'getpaid_stripe_payment_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'getpaid_stripe_payment_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'getpaid_stripe_payment_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'getpaid_stripe_payment_profile_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_associated_stripe_invoice_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_associated_stripe_invoice_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_associated_stripe_invoice_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_associated_stripe_invoice_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gp_stripe_charge_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gp_stripe_charge_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gp_stripe_charge_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gp_stripe_charge_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_gp_stripe_refund_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_gp_stripe_refund_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_gp_stripe_refund_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_gp_stripe_refund_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address'"
