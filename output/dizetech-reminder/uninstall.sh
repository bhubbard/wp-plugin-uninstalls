#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dizetech_rem_settings_templates'
wp option delete 'dizetech_rem_settings_general'
wp option delete 'dizetech_rem_settings_advanced'
wp option delete 'cron_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dizetech_rem_event_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dizetech_rem_event_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dizetech_rem_event_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dizetech_rem_event_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dizetech_rem_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dizetech_rem_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dizetech_rem_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dizetech_rem_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dizetech_rem_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dizetech_rem_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dizetech_rem_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dizetech_rem_notifications'"
