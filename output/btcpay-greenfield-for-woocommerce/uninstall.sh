#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'btcpay_gf_separate_gateways'
wp option delete 'btcpay_gf_sats_mode'
wp option delete 'btcpay_gf_review_dismissed_forever'
wp option delete 'btcpay_gf_url'
wp option delete 'btcpay_gf_modal_checkout'
wp option delete 'btcpaygf_permalinks_flushed'
wp option delete 'btcpay_gf_api_key'
wp option delete 'btcpay_gf_store_id'
wp option delete 'btcpay_gf_connection_details'
wp option delete 'btcpay_gf_webhook'
wp option delete 'woocommerce_btcpaygf_default_settings'
wp option delete 'btcpay_gf_refund_note_visible'
wp option delete 'btcpay_gf_debug'
wp option delete 'btcpay_gf_order_states'
wp option delete 'btcpay_gf_protect_order_status'
wp option delete 'btcpay_gf_send_customer_data'
wp option delete 'btcpay_gf_transaction_speed'

# Delete Transients
wp transient delete 'btcpay_gf_review_dismissed'

