#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zimrate-prefer'
wp option delete 'zimrate-interval'
wp option delete 'zimrate-cushion'
wp option delete 'zimrate-currencies'
wp option delete 'zimrate-analytics'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_USD'"
wp option delete 'alg_currency_switcher_exchange_rate_offset'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-backup' OR option_name LIKE '_site_transient_%-backup'"
wp transient delete 'zimrate-backup'
wp transient delete 'zimrate'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zimrate-%' OR option_name LIKE '_site_transient_zimrate-%'"

