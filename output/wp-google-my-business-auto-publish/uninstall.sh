#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_google_my_business_auto_publish_settings'
wp option delete 'wp_google_my_business_auto_publish_auth_settings'

# Delete Transients
wp transient delete 'northern_beaches_websites'
wp transient delete 'wp_google_my_business_auto_publish_locations'
wp transient delete 'wp_google_my_business_auto_publish_auth_settings'
wp transient delete 'wp_google_my_business_auto_publish_accounts'
wp transient delete 'wp_google_my_business_auto_publish_location_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_google_share_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_google_share_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_google_share_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_google_share_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_google_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_google_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_google_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_google_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dont_share_post_google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dont_share_post_google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dont_share_post_google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dont_share_post_google'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_make_an_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_make_an_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_make_an_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_make_an_event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_start_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_start_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_start_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_start_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_event_end_date_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_event_end_date_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_event_end_date_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_event_end_date_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_location_selection_google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_location_selection_google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_location_selection_google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_location_selection_google'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sent_to_google'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sent_to_google'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sent_to_google'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sent_to_google'"
