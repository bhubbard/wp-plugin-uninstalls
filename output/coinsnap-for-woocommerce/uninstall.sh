#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coinsnap_provider'
wp option delete 'woocommerce_currency'
wp option delete 'coinsnap_connection_status_display'
wp option delete 'coinsnap_sats_mode'
wp option delete 'btcpay_server_url'
wp option delete 'coinsnap_permalinks_flushed'
wp option delete 'btcpay_api_key'
wp option delete 'btcpay_store_id'
wp option delete 'woocommerce_coinsnap_settings'
wp option delete 'coinsnap_modal_checkout'
wp option delete 'coinsnap_order_states'
wp option delete 'coinsnap_send_customer_data'
wp option delete 'coinsnap_returnurl'
wp option delete 'coinsnap_autoredirect'
wp option delete 'coinsnap_separate_gateways'
wp option delete 'coinsnap_api_key'
wp option delete 'coinsnap_store_id'
wp option delete 'coinsnap_webhook'
wp option delete 'coinsnap_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Coinsnap_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Coinsnap_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Coinsnap_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Coinsnap_id'"
