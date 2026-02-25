#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'altapay_db_version'
wp option delete 'altapay_terminal_classes_recreated'
wp option delete 'altapay_terminals_enabled'
wp option delete 'altapay_terminals'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_currency'
wp option delete 'altapay_payment_page'
wp option delete 'altapay_username'
wp option delete 'altapay_cc_form_styling'
wp option delete 'altapay_callback_redirect_page'
wp option delete 'altapay_external_payment_page'
wp option delete 'altapay_gateway_url'
wp option delete 'altapay_password'
wp option delete 'altapay_fraud_detection'
wp option delete 'altapay_fraud_detection_action'
wp option delete 'altapay_payment_page_layout'
wp option delete 'woocommerce_default_country'
wp option delete '$creditCardDBVersion'

# Delete Transients
wp transient delete 'terminals_directory_error'
wp transient delete 'altapay_capture_failed'
wp transient delete 'altapay_capture_warning'
wp transient delete 'altapay_sync_terminals'
wp transient delete 'altapay_login_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qty_captured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qty_captured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qty_captured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qty_captured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_save_credit_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_save_credit_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_save_credit_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_save_credit_card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refunded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refunded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refunded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refunded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_released'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_released'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_released'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_released'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_captured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_captured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_captured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_captured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_transaction_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardno'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardno'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardno'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardno'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_credit_card_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_credit_card_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_credit_card_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_credit_card_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_credit_card_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_credit_card_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_credit_card_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_credit_card_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_credit_card_expiry_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_credit_card_expiry_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_credit_card_expiry_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_credit_card_expiry_date'"
