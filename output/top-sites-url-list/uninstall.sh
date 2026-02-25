#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsul_google_authtoken'
wp option delete 'tsul_google_token'
wp option delete 'tsul_google_uid'
wp option delete 'tsul_hide_profiles'
wp option delete 'tsul_google_profile_name'
wp option delete 'tsul_first_fetch'
wp option delete 'tsul_cron_recurrance'
wp option delete 'tsul_show_in_admin_tables'
wp option delete 'tsul_full_stats'
wp option delete 'tsul_stats'
wp option delete 'widget_tsul'

# Clear Cron Jobs
wp cron event delete 'tsul_cron_hook'

