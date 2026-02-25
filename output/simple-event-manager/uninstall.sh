#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simevema_event_image_height'
wp option delete 'simevema_event_date_format'
wp option delete 'simevema_filter_bg'
wp option delete 'simevema_filter_shadow'
wp option delete 'simevema_filter_radius'
wp option delete 'simevema_button_bg'
wp option delete 'simevema_button_hover'
wp option delete 'simevema_button_radius'
wp option delete 'simevema_event_bg'
wp option delete 'simevema_event_shadow'
wp option delete 'simevema_event_radius'
wp option delete 'simevema_event_title'
wp option delete 'simevema_event_text'
wp option delete 'simevema_event_meta_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simevema_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simevema_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simevema_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simevema_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simevema_event_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simevema_event_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simevema_event_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simevema_event_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simevema_event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simevema_event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simevema_event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simevema_event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simevema_event_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simevema_event_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simevema_event_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simevema_event_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simevema_event_repeat_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simevema_event_repeat_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simevema_event_repeat_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simevema_event_repeat_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_simevema_event_repeated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_simevema_event_repeated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_simevema_event_repeated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_simevema_event_repeated'"
