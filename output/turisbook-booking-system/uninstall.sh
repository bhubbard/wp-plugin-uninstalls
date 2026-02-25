#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'turisbook-hotel-id'
wp option delete 'turisbook-access-token'
wp option delete 'turisbook-hotel-name'
wp option delete 'turisbook-page-prebook'
wp option delete 'turisbook-page-confirmation'
wp option delete 'turisbook-page-availability-search'
wp option delete 'turisbook-page-prebook-policy'
wp option delete 'turisbook-analytics-booking-goal-enabled'
wp option delete 'turisbook-cart-position'
wp option delete 'turisbook-cart-background'
wp option delete 'turisbook-show-menu-apt'
wp option delete 'turisbook-hotels'
wp option delete 'turisbook-hotel-type'
wp option delete 'turisbook-hotel-unique-id'
wp option delete 'turisbook-version'
wp option delete 'turisbook-hotel-payments'
wp option delete 'turisbook-display-type'
wp option delete 'turisbook-children-max-age'
wp option delete 'elementor_google_maps_api_key'

# Clear Cron Jobs
wp cron event delete 'isa_add_every_thirty_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_establishment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_establishment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_establishment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_establishment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_awards'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_awards'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_awards'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_awards'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_img_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_img_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_img_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_img_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_seasons'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_seasons'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_seasons'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_seasons'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_sleeps'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_sleeps'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_sleeps'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_sleeps'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_adult_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_adult_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_adult_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_adult_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_children_capacity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_children_capacity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_children_capacity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_children_capacity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_extrabed_children'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_extrabed_children'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_extrabed_children'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_extrabed_children'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_extrabed_adults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_extrabed_adults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_extrabed_adults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_extrabed_adults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_extrabed_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_extrabed_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_extrabed_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_extrabed_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_rooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_rooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_rooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_rooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_bathrooms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_bathrooms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_bathrooms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_bathrooms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_lotation_base'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_lotation_base'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_lotation_base'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_lotation_base'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_location_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_location_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_location_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_location_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_room_location_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_room_location_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_room_location_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_room_location_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_color_background'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_color_background'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_color_background'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_color_background'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_color_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_color_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_color_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_color_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_color_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_color_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_color_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_color_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_establishment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_establishment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_establishment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_establishment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_children_max_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_children_max_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_children_max_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_children_max_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_payments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_payments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_payments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_payments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'turisbook_locations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'turisbook_locations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'turisbook_locations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'turisbook_locations'"
