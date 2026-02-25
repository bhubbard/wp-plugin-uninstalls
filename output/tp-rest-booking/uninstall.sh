#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tprb_general_options'
wp option delete 'restaurant_booking_settings'
wp option delete 'tprb_notifications_options'
wp option delete 'tprb_jwt_secret_key'
wp option delete 'tprb_security_options'
wp option delete 'tprb_admin_email'
wp option delete 'tprb_notify_admin'
wp option delete 'tprb_notify_client'
wp option delete 'tprb_email_subject'
wp option delete 'tprb_email_template'
wp option delete 'restaurant_booking_weekly_availability'

