#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vulners_plugins_audit_result'
wp option delete 'vulners_os_audit_result'
wp option delete 'vulners_os_audit_last_changes'
wp option delete 'vulners_plugins_audit_last_changes'
wp option delete 'VULNERS_EMAIL'
wp option delete 'VULNERS_API_KEY'
wp option delete 'vulners_audit_result'

# Clear Cron Jobs
wp cron event delete 'vulners_cron_hook'

