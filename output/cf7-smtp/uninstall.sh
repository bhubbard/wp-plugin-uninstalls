#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7-smtp-options'
wp option delete 'cf7-smtp-report'

# Delete Transients
wp transient delete 'cf7_smtp_testing'
wp transient delete 'cf7_smtp_testing_error'
wp transient delete 'cf7_smtp_testing_log'

# Clear Cron Jobs
wp cron event delete 'cf7_smtp_report'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7_smtp_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7_smtp_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7_smtp_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7_smtp_hide_welcome_panel_on'"
