#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'payuni_payment_language'
wp option delete 'payuni_payment_testmode_enabled'
wp option delete 'payuni_payment_merchant_id_test'
wp option delete 'payuni_payment_merchant_id'
wp option delete 'payuni_payment_hashkey_test'
wp option delete 'payuni_payment_hashkey'
wp option delete 'payuni_payment_hashiv_test'
wp option delete 'payuni_payment_hashiv'
wp option delete 'payuni_payment_debug_log_enabled'
wp option delete 'payuni_payment_einvoice_enabled'
wp option delete 'payuni_payment_installment_number_of_payments'

