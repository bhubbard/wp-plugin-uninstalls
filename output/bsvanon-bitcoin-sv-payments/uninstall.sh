#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'woocommerce_bitcoin_sv_settings'
wp option delete 'bwwc_gateway_id_migration_done'
wp option delete 'woocommerce_bitcoin_settings'
wp option delete 'bwwc_migration_offset'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bwwc_coingecko_rate_%' OR option_name LIKE '_site_transient_bwwc_coingecko_rate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bwwc_coinpaprika_rate_%' OR option_name LIKE '_site_transient_bwwc_coinpaprika_rate_%'"

# Clear Cron Jobs
wp cron event delete 'BWWC_cron_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_total_in_btc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_total_in_btc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_total_in_btc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_total_in_btc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bitcoins_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bitcoins_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bitcoins_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bitcoins_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expected_sats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expected_sats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expected_sats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expected_sats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address_expires_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address_expires_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address_expires_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address_expires_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'txids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'txids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'txids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'txids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'received_sats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'received_sats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'received_sats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'received_sats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'confirmed_sats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'confirmed_sats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'confirmed_sats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'confirmed_sats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'best_confirmations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'best_confirmations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'best_confirmations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'best_confirmations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_blockchain_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_blockchain_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_blockchain_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_blockchain_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_checked_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_checked_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_checked_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_checked_at'"
