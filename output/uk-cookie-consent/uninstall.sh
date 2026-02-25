#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'termly_website'
wp option delete 'termly_api_key'
wp option delete 'termly_business_info'
wp option delete 'termly_business_settings'
wp option delete 'termly_banner'
wp option delete 'termly_banner_settings'
wp option delete 'termly_cookie_preference_button'
wp option delete 'termly_site_scan'
wp option delete 'termly_display_banner'
wp option delete 'termly_display_auto_blocker'
wp option delete 'termly_display_custom_map'
wp option delete 'termly_custom_blocking_map'

# Delete Transients
wp transient delete 'termly-feature-set'
wp transient delete 'termly-site-scan-results'

# Clear Cron Jobs
wp cron event delete 'termly_account_update'

