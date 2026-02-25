#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hesapis_api_key'
wp option delete 'hesapis_modules'
wp option delete 'hesapis_refresh_rate'
wp option delete 'hesapis_cache_time'
wp option delete 'hesapis_language'
wp option delete 'hesapis_currency'
wp option delete 'hesapis_theme'
wp option delete 'hesapis_show_credit'

# Delete Transients
wp transient delete 'hesapis_gold_data'
wp transient delete 'hesapis_currency_data'
wp transient delete 'hesapis_crypto_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hesapis_%' OR option_name LIKE '_site_transient_hesapis_%'"
wp transient delete 'hesapis_market_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hesapis_refresh_%' OR option_name LIKE '_site_transient_hesapis_refresh_%'"

# Clear Cron Jobs
wp cron event delete 'hesapis_refresh_cache'

