#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crypto_bitcoin_address'
wp option delete 'crypto_ethereum_address'
wp option delete 'crypto_solana_address'
wp option delete 'crypto_bitcoin_qr_url'
wp option delete 'crypto_ethereum_qr_url'
wp option delete 'crypto_solana_qr_url'
wp option delete 'default_crypto'
wp option delete 'default_theme'
wp option delete 'crypto_title'

