#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mctwc_version'
wp option delete 'woocommerce_mailchimp-tags_settings'

# Delete Transients
wp transient delete 'mctwc_api_status'

# Clear Cron Jobs
wp cron event delete 'mctwc_daily_health_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mctwc_dismissed_config_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mctwc_dismissed_config_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mctwc_dismissed_config_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mctwc_dismissed_config_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mctwc_dismissed_invalid_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mctwc_dismissed_invalid_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mctwc_dismissed_invalid_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mctwc_dismissed_invalid_notice'"
