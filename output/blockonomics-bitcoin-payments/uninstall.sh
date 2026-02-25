#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blockonomics_api_key'
wp option delete 'blockonomics_bitcoin_discount'
wp option delete 'blockonomics_callback_secret'
wp option delete 'blockonomics_db_version'
wp option delete 'blockonomics_margin'
wp option delete 'blockonomics_timeperiod'
wp option delete 'blockonomics_api_updated'
wp option delete 'blockonomics_bch'
wp option delete 'blockonomics_btc'
wp option delete 'blockonomics_underpayment_slack'
wp option delete 'blockonomics_usdt_testnet'
wp option delete 'blockonomics_lite'
wp option delete 'blockonomics_nojs'
wp option delete 'blockonomics_network_confirmation'
wp option delete 'blockonomics_partial_payments'
wp option delete 'woocommerce_blockonomics_settings'
wp option delete 'blockonomics_store_name'
wp option delete 'blockonomics_enabled_cryptos'
wp option delete 'woocommerce_payment_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'blockonomics_%'"
wp option delete 'blockonomics_temp_wallet_id'
wp option delete 'blockonomics_extra_margin'
wp option delete 'blockonomics_orders'

