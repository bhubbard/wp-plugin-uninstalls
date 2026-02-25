#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdevents_installed'
wp option delete 'geodir_event_version'
wp option delete 'geodir_event_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%category_installed'"
wp option delete 'geodirectory_db_version'
wp option delete 'geodirevents_db_version'
wp option delete 'geodirectory_version'
wp option delete 'geodir_settings'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete '_geodir_event_activation_redirect'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'geodir_event_schedule_handle_past_events'
wp cron event delete 'geodir_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_rsvp_yes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_rsvp_yes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_rsvp_yes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_rsvp_yes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_rsvp_maybe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_rsvp_maybe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_rsvp_maybe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_rsvp_maybe'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
