#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wphostel_booking_mode'
wp option delete 'wphostel_email_options'
wp option delete 'wphostel_min_stay'
wp option delete 'hostelpro_cleanup_email_log'
wp option delete 'wphostel_booking_start'
wp option delete 'wphostel_ical_import_error'
wp option delete 'wphostel_locale_url'
wp option delete 'wphostel_datepicker_css'
wp option delete 'wphostel_currency'
wp option delete 'wphostel_version'
wp option delete 'wphostel_debug_mode'
wp option delete 'wphostel_cleanup_hours'
wp option delete 'wphostel_max_date'
wp option delete 'wphostel_paypal'
wp option delete 'wphostel_use_pdt'
wp option delete 'wphostel_pdt_token'
wp option delete 'wphostel_errorlog'
wp option delete 'wphostel_cleanup_db'

