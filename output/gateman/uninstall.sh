#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gateman_login_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gateman_otp_%' OR option_name LIKE '_site_transient_gateman_otp_%'"

