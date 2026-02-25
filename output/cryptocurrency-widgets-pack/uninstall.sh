#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcwp-notice'
wp option delete 'mcwp-top-notice'

# Delete Transients
wp transient delete 'mcwp-data-time'
wp transient delete 'mcwp_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crypto_speed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crypto_speed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crypto_speed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crypto_speed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crypto_ticker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crypto_ticker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crypto_ticker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crypto_ticker'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'crypto_ticker_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'crypto_ticker_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'crypto_ticker_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'crypto_ticker_position'"
