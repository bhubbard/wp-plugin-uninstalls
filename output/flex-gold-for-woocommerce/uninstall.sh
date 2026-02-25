#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dg_capital_plugin_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dg_capital_plugin_%'"
wp option delete 'dg_capital_plugin_method_title'
wp option delete 'dg_capital_plugin_what_is_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_international_fee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_service_fee'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_percent_fee'"

# Delete Transients
wp transient delete 'teams'
wp transient delete 'wallets'
wp transient delete 'gold_price'

