#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_etransactions_account_environment'
wp option delete 'woocommerce_etransactions_std_env'
wp option delete 'woocommerce_etransactions_std_settings'
wp option delete 'woocommerce_etransactions_std_test_settings'

# Delete Transients
wp transient delete 'wc_etransaction_active_plugins'
wp transient delete 'wc_etransaction_inactive_plugins'

# Clear Cron Jobs

