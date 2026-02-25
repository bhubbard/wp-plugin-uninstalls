#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'upd_brief_mainwp_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_APIManAdder'"
wp option delete 'upd_brief_settings'
wp option delete 'upd_brief_encrypted_mainwp_api_key'
wp option delete 'upd_brief_encrypted_update_brief_api_key'

# Clear Cron Jobs
wp cron event delete 'upd_brief_cleanup_logs'

