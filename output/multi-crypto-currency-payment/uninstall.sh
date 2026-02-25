#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_mccp_settings'
wp option delete 'woocommerce_mccp_account'
wp option delete 'woocommerce_mccp_secret'
wp option delete 'woocommerce_mccp_wallets'
wp option delete 'mccp_db_version'

