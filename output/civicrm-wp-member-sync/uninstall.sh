#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_civi_wpms_memberships_offset'
wp option delete 'civi_wp_member_sync_settings'
wp option delete 'civi_wp_member_sync_version'
wp option delete 'jal_db_version'
wp option delete 'tadms_db_version'
wp option delete 'civi_member_sync_db_version'
wp option delete 'civi_member_sync_settings'

# Clear Cron Jobs
wp cron event delete 'civi_wp_member_sync_refresh'
wp cron event delete 'civi_member_sync_refresh'

