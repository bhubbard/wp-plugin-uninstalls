#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aacb_options'
wp option delete 'aacb_accountID'
wp option delete 'aacb_installed'
wp option delete 'aacb_siteID'
wp option delete 'aacb_hide_premium_notice'
wp option delete 'aacb_version'
wp option delete 'aacb_wizard_completed'
wp option delete 'aacb_setup_notice_dismissed'
wp option delete 'aacb_account_tier'
wp option delete 'aacb_engagement_score'
wp option delete 'aacb_widget_opens_count'
wp option delete 'aacb_days_since_install'
wp option delete 'aacb_conversion_events'
wp option delete 'aacb_email_capture_shown'
wp option delete 'aacb_email_capture_count'

# Delete Transients
wp transient delete 'aacb_site_options_cache'
wp transient delete 'aacb_validation_cache'

# Clear Cron Jobs
wp cron event delete 'aacb_daily_analytics_calculation'

