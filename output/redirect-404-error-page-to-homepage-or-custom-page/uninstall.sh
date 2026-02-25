#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_reminder_time'"
wp option delete 'wpvofw_db_version'
wp option delete 'wpvofw_activation_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'feedback_form_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'feedback_form_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'feedback_form_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'feedback_form_submitted'"
