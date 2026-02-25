#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'briefnote_content'
wp option delete 'briefnote_last_saved'
wp option delete 'briefnote_settings'
wp option delete 'briefnote_caps_version'
wp option delete 'briefnote_db_version'

# Clear Cron Jobs
wp cron event delete 'briefnote_cleanup_audit_logs'

