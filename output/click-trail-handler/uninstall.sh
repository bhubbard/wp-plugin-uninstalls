#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clicutcl_attribution_settings'
wp option delete 'clicutcl_pii_risk_detected'
wp option delete 'clicutcl_consent_mode'
wp option delete 'clicutcl_gtm'

# Clear Cron Jobs
wp cron event delete 'clicutcl_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clicutcl_tracking_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clicutcl_tracking_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clicutcl_tracking_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clicutcl_tracking_sent'"
