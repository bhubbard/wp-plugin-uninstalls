#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yrw_active'
wp option delete 'yrw_api_key'
wp option delete 'yrw_activation_time'
wp option delete 'yrw_is_multisite'
wp option delete 'yrw_version'
wp option delete 'yrw_rev_notice_hide'
wp option delete 'rplg_rev_notice_show'
wp option delete 'yrw_language'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yrw_refresh_reviews_%' OR option_name LIKE '_site_transient_yrw_refresh_reviews_%'"

# Clear Cron Jobs
wp cron event delete 'yrw_refresh_reviews'

