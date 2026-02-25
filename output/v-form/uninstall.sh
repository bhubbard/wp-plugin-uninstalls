#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vpsuform_secret_key'
wp option delete 'vform_api_key'
wp option delete 'vform_plugin_version'
wp option delete 'vpsuform_review_count'
wp option delete 'vpsuform_review_dismissed'

# Clear Cron Jobs
wp cron event delete 'vform_send_scheduled_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vform_selected_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vform_selected_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vform_selected_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vform_selected_id'"
