#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'math_captcha_lic'
wp option delete 'math_captcha_options'
wp option delete 'math_captcha_version'
wp option delete 'mc_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mc_%' OR option_name LIKE '_site_transient_mc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_frm_%' OR option_name LIKE '_site_transient_frm_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_woologin_%' OR option_name LIKE '_site_transient_woologin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bbp_%' OR option_name LIKE '_site_transient_bbp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cf7_%' OR option_name LIKE '_site_transient_cf7_%'"

# Clear Cron Jobs
wp cron event delete 'math_GEO_cron_event'

