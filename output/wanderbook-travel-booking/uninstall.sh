#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wanderbook_global_unavailable_dates'
wp option delete 'wanderbook_global_availability_enabled'
wp option delete 'wanderbook_first_day'
wp option delete 'wanderbook_date_format'
wp option delete 'wanderbook_min_lead_value'
wp option delete 'wanderbook_min_lead_unit'
wp option delete 'wanderbook_max_advance_value'
wp option delete 'wanderbook_max_advance_unit'
wp option delete 'wanderbook_flatpickr_theme'
wp option delete 'wanderbook_primary_color'
wp option delete 'wanderbook_secondary_color'
wp option delete 'wanderbook_labels'
wp option delete 'wanderbook_travel_db_version'
wp option delete 'woocommerce_currency_pos'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_enable_lead_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_enable_lead_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_enable_lead_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_enable_lead_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_lead_time_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_lead_time_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_lead_time_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_lead_time_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_booking_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_booking_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_booking_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_booking_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_price_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_price_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_price_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_price_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_children_allowed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_children_allowed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_children_allowed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_children_allowed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_price_adult'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_price_adult'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_price_adult'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_price_adult'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_price_child'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_price_child'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_price_child'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_price_child'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_price_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_price_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_price_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_price_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_min_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_min_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_min_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_min_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_max_people'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_max_people'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_max_people'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_max_people'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_unavailable_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_unavailable_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_unavailable_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_unavailable_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wander_disable_global_avail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wander_disable_global_avail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wander_disable_global_avail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wander_disable_global_avail'"
