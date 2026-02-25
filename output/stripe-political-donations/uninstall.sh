#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stripe_payments_live_public_key'
wp option delete 'stripe_payments_live_secret_key'
wp option delete 'stripe_payments_test_public_key'
wp option delete 'stripe_payments_test_secret_key'
wp option delete 'stripe_payments_is_live_keys'
wp option delete 'stripe_payments_is_political'
wp option delete 'stripe_payments_full_address'
wp option delete 'stripe_payments_employment'
wp option delete 'stripe_payments_eligibility'
wp option delete 'stripe_payments_currency_symbol'
wp option delete 'stripe_payments_trans_prefix'
wp option delete 'stripe_payments_ella_key'
wp option delete 'stripe_payments_ella_secret'
wp option delete 'stripe_payments_postmark_key'
wp option delete 'stripe_payments_postmark_address'
wp option delete 'stripe_payments_postmark_name'
wp option delete 'stripe_payments_postmark_subject'
wp option delete 'ngp_api_key'
wp option delete 'ngp_secure_url'
wp option delete 'ngp_support_phone'
wp option delete 'ngp_thanks_url'
wp option delete 'stripe_payments_payment_trans_prefix'

