#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_latitude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_longitude'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_holy_day_dates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pages_to_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_redirect_to_page'"
wp option delete 'keepsabbath_setting_latitude'
wp option delete 'keepsabbath_setting_longitude'
wp option delete 'keepsabbath_setting_holy_day_dates'
wp option delete 'keepsabbath_setting_pages_to_redirect'
wp option delete 'keepsabbath_setting_redirect_to_page'

