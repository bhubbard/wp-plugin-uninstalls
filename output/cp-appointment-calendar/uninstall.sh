#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'dex_appointments_data'
wp option delete 'calendar_language'
wp option delete 'calendar_dateformat'
wp option delete 'calendar_militarytime'
wp option delete 'calendar_weekday'
wp option delete 'calendar_mindate'
wp option delete 'calendar_maxdate'
wp option delete 'calendar_pages'
wp option delete 'enable_paypal'
wp option delete 'paypal_email'
wp option delete 'request_cost'
wp option delete 'paypal_product_name'
wp option delete 'currency'
wp option delete 'url_ok'
wp option delete 'url_cancel'
wp option delete 'paypal_language'
wp option delete 'notification_from_email'
wp option delete 'notification_destination_email'
wp option delete 'email_subject_confirmation_to_user'
wp option delete 'email_confirmation_to_user'
wp option delete 'email_subject_notification_to_admin'
wp option delete 'email_notification_to_admin'

