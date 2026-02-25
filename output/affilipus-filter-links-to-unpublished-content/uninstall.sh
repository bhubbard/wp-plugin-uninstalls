#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affilipus_linkfilter_version'

# Clear Cron Jobs
wp cron event delete 'imbaf_filter_hourly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imbaf-linkfilter_filter_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imbaf-linkfilter_filter_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imbaf-linkfilter_filter_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imbaf-linkfilter_filter_links'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imbaf-linkfilter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imbaf-linkfilter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imbaf-linkfilter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imbaf-linkfilter'"
