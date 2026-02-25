#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rendez_vous_last_message_%' OR option_name LIKE '_site_transient_rendez_vous_last_message_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_venue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_venue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_venue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_venue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_attendees'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_attendees'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_attendees'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_attendees'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_defdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_defdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_defdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_defdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rendez_vous_group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rendez_vous_group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rendez_vous_group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rendez_vous_group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_rendez_vous_schedule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_rendez_vous_schedule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_rendez_vous_schedule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_rendez_vous_schedule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notification_rendez_vous_attend'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notification_rendez_vous_attend'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notification_rendez_vous_attend'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notification_rendez_vous_attend'"
