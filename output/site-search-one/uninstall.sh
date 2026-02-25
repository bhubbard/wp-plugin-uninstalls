#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site-search-one-premium-install-location'
wp option delete 'site-search-one-install-location'

# Delete Transients
wp transient delete 'ss1-endpoint-url'
wp transient delete 'ss1-apiKey'
wp transient delete 'ss1-disableLongRunningThreads'
wp transient delete 'ss1-maximumBatchSize'
wp transient delete 'ss1-queue-paused'
wp transient delete 'ss1-searchform-override'
wp transient delete 'ss1-globals-installed'
wp transient delete 'ss1-indexes-installed'
wp transient delete 'ss1-site-vars-installed'
wp transient delete 'ss1-tokens-has-sites'
wp transient delete 'ss1-search-pages-installed'
wp transient delete 'ss1-active'

# Clear Cron Jobs
wp cron event delete 'ss1_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss1_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss1_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss1_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss1_noindex'"
