#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_agenda_week_hour_start'
wp option delete 'ns_agenda_week_hour_end'
wp option delete 'ns_agenda_cancelled_agenda_email'
wp option delete 'ns_agenda_outlook_client_id'
wp option delete 'ns_agenda_outlook_client_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ns_agenda_option_struct_%'"
wp option delete 'ns_agenda_starting_year_period_opt'
wp option delete 'ns_agenda_ending_year_period_opt'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'prima_update'
wp option delete 'dopo_update'
wp option delete 'ns_agenda_is_hourly'
wp option delete 'ns_agenda_custom_hour_week'
wp option delete 'outlook_prod_id'
wp option delete 'ns_agenda_year_struct'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"
wp option delete 'ns_agenda_cart_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hour_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hour_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hour_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hour_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hour_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hour_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hour_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hour_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bookable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'date_out'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'date_out'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'date_out'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'date_out'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_agenda_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_agenda_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_agenda_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_agenda_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_agenda_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_agenda_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_agenda_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_agenda_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'outlook_already_exported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'outlook_already_exported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'outlook_already_exported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'outlook_already_exported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ns_agenda_hourly_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ns_agenda_hourly_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ns_agenda_hourly_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ns_agenda_hourly_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
