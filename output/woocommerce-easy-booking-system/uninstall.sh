#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wceb_background_color'
wp option delete 'wceb_main_color'
wp option delete 'wceb_text_color'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'easy_booking_display_notice_%'"
wp option delete 'wceb_booking_mode'
wp option delete 'wceb_number_of_dates'
wp option delete 'wceb_bookings_db_version'
wp option delete 'wceb_all_bookable'
wp option delete 'easy_booking_db_version'
wp option delete 'wceb_booking_duration'
wp option delete 'wceb_custom_booking_duration'
wp option delete 'easy_booking_display_notice_pro_upgrade'
wp option delete 'easy_booking_display_notice_pro_upgrade_reminder'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'wceb_calendar_theme'
wp option delete 'wceb_keep_start_status_for'
wp option delete 'wceb_keep_end_status_for'
wp option delete 'wceb_set_start_booking_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_booking_status'"
wp option delete 'wceb_last_available_date'
wp option delete 'wceb_booking_min'
wp option delete 'wceb_booking_max'
wp option delete 'wceb_first_available_date'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wceb_set_processing_booking_status'
wp option delete 'wceb_set_completed_booking_status'
wp option delete 'easy_booking_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wceb_%'"
wp option delete 'wceb_set_end_booking_status'
wp option delete 'wceb_set_end_status'

# Delete Transients
wp transient delete 'wceb_updated'
wp transient delete 'wceb_activated'

# Clear Cron Jobs
wp cron event delete 'wceb_update_booking_statuses_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_first_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_first_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_first_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_first_available_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_last_available_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_last_available_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_last_available_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_last_available_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_number_of_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_number_of_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_number_of_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_number_of_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_booking_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_booking_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_booking_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_booking_duration'"
