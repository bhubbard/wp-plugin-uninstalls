#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raptcha_settings'
wp option delete 'raptcha_core_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_raptcha_challenge_%' OR option_name LIKE '_site_transient_raptcha_challenge_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_raptcha_token_%' OR option_name LIKE '_site_transient_raptcha_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_raptcha_files_%' OR option_name LIKE '_site_transient_raptcha_files_%'"

# Clear Cron Jobs
wp cron event delete 'raptcha_cleanup_challenges'

