#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-currencies' OR option_name LIKE '_site_transient_%-currencies'"

# Clear Cron Jobs
wp cron event delete 'check_pesepay_payment_status'

