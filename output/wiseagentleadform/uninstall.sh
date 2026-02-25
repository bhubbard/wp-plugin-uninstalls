#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wiseagent_options'
wp option delete 'wiseagent_hcaptcha_options'
wp option delete 'wiseagent_recaptcha_options'
wp option delete 'wiseagent_content_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_start_time_iso'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_start_time_iso'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_start_time_iso'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_start_time_iso'"
