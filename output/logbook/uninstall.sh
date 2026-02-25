#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logbook-scheduled-event'
wp option delete 'logbook-tmp-token'
wp option delete 'logbook-api-token'

# Clear Cron Jobs
wp cron event delete 'logbook_scheduled_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_logbook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_logbook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_logbook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_logbook'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_logbook_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_logbook_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_logbook_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_logbook_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_logbook_log_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_logbook_log_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_logbook_log_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_logbook_log_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_logbook_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_logbook_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_logbook_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_logbook_ip'"
