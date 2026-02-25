#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gravity_otp_verification_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gravity_otp_verification_attempts_%' OR option_name LIKE '_site_transient_gravity_otp_verification_attempts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gravity_otp_verification_%' OR option_name LIKE '_site_transient_gravity_otp_verification_%'"

