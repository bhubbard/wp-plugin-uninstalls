#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AHSITW_quality'
wp option delete 'AHSITW_conversion_count'

# Delete Transients
wp transient delete 'AHSITW_unconverted_count_rough'

# Clear Cron Jobs
wp cron event delete 'AHSITW_daily_maintenance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_AHSITW_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_AHSITW_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_AHSITW_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_AHSITW_converted'"
