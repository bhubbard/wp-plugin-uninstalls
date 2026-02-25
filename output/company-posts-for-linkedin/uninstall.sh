#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_authkey'"
wp option delete 'linkedin_company_posts_data'
wp option delete 'linkedin_company_last_refreshed_time'
wp option delete 'linkedin_company_plugin_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'refresh_linkedin_company_access_token'

