#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fkwcs_apple_pay_domain_is_verified'
wp option delete 'fkwcs_apple_pay_verified_domain'
wp option delete 'fkwcs_live_created_webhook'
wp option delete 'fkwcs_wp_stripe'
wp option delete 'woocommerce_fkwcs_stripe_settings'
wp option delete 'fkwcs_mode'
wp option delete 'fkwcs_test_pub_key'
wp option delete 'fkwcs_pub_key'
wp option delete 'fkwcs_stripe_account_settings'
wp option delete 'fkwcs_wp_hash'
wp option delete 'fkwcs_live_webhook_secret'
wp option delete 'fkwcs_live_webhook_url'
wp option delete 'fkwcs_test_webhook_secret'
wp option delete 'fkwcs_test_created_webhook'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_webhook_secret'"
wp option delete 'fkwcs_secret_key'
wp option delete 'fkwcs_test_secret_key'
wp option delete 'fkwcs_stripe_statement_descriptor_full'
wp option delete 'fkwcs_stripe_statement_descriptor_prefix'
wp option delete 'woocommerce_default_country'
wp option delete 'fkwcs_setup_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_created_webhook'"
wp option delete 'fkwcs_currency_fee'
wp option delete 'fkwcs_account_id'
wp option delete 'fkwcs_debug_log'
wp option delete 'fkwcs_stripe_statement_descriptor_should_customize'
wp option delete 'fkwcs_stripe_statement_descriptor_suffix'

# Delete Transients
wp transient delete '_wc_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fkwcs_user_tokens_%' OR option_name LIKE '_site_transient_fkwcs_user_tokens_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fkwcs_stripe_processing_intent_%' OR option_name LIKE '_site_transient_fkwcs_stripe_processing_intent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__fkwcs_refund_id_cache_%' OR option_name LIKE '_site_transient__fkwcs_refund_id_cache_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fkwcs_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fkwcs_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fkwcs_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fkwcs_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
