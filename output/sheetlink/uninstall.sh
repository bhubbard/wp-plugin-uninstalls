#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rgsi_activation_time'
wp option delete 'raogsi_credentials'
wp option delete 'raogsi_google_token'
wp option delete 'rgsi_review_notice_dismissed'
wp option delete 'srgsi_review_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'raogsi_worksheet_list'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sent_to_sheet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sent_to_sheet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sent_to_sheet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sent_to_sheet'"
