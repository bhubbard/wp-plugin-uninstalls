#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_layer-crypto-checkout_settings'
wp option delete 'lccp_txhash_db_version'

