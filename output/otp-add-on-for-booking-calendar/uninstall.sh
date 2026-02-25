#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbc_otp_method'
wp option delete 'wpbc_sms_api_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpbc_booking_otp_%' OR option_name LIKE '_site_transient_wpbc_booking_otp_%'"

