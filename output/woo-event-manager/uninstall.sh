#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_event_google_api_key'
wp option delete 'allow_google_calandar'
wp option delete 'show_google_map_on_product'
wp option delete 'passed_events_purchasable'
wp option delete 'only_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_datetime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_datetime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_datetime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_datetime'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_end_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_add_to_cart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_add_to_cart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_add_to_cart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_add_to_cart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'event_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'event_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'event_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'event_lang'"
