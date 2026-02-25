#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_viapay_gateway_settings'
wp option delete 'woocommerce_viapay_checkout_settings'
wp option delete 'viapay_test_api_key_request_date'
wp option delete 'viapay_account_creation_request_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_viapay_webhook_%'"
wp option delete 'viabill_key'
wp option delete 'viabill_secret'
wp option delete 'viabill_pricetag'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'viapay_activation_redirect'
wp option delete 'woocommerce_viapay_version'
wp option delete 'woocommerce_viapay_viabill_settings'

# Delete Transients
wp transient delete 'viapay_api_action_error'
wp transient delete 'viapay_api_action_success'
wp transient delete 'viapay_webhook_settings_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_viapay_invoice_%' OR option_name LIKE '_site_transient_viapay_invoice_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_maybe_save_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_maybe_save_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_maybe_save_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_maybe_save_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_capture_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_capture_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_capture_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_capture_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_cancel_transaction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_cancel_transaction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_cancel_transaction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_cancel_transaction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_credit_note_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_credit_note_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_credit_note_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_credit_note_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'viapay_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'viapay_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'viapay_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'viapay_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_token_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_token_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_token_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_token_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_state_authorized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_state_authorized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_state_authorized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_state_authorized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_viapay_state_settled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_viapay_state_settled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_viapay_state_settled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_viapay_state_settled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
