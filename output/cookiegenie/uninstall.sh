#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cg_enabled'
wp option delete 'cg_blacklist'
wp option delete 'cg_whitelist'
wp option delete 'cg_bck_color'
wp option delete 'cg_scn_color'
wp option delete 'cg_cookietitle'
wp option delete 'cg_cookietext'
wp option delete 'cg_cookiedeclaration'
wp option delete 'cg_expire'
wp option delete 'cg_ad_storage'
wp option delete 'cg_ad_user_data'
wp option delete 'cg_ad_personalization'
wp option delete 'cg_analytics_storage'
wp option delete 'cg_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Clear Cron Jobs
wp cron event delete 'cg_update_lists'

