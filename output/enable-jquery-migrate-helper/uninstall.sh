#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jqmh_logs'
wp option delete '_jquery_migrate_downgrade_version'
wp option delete '_jquery_migrate_public_deprecation_logging'
wp option delete '_jquery_migrate_modern_deprecations'
wp option delete '_jquery_migrate_has_auto_downgraded'
wp option delete '_jquery_migrate_deprecations_dismissed_notice'
wp option delete '_jquery_migrate_dismissed_notice'
wp option delete 'jqmh_last_log_time'
wp option delete '_jquery_migrate_previous_deprecations_dismissed_notice'

# Clear Cron Jobs
wp cron event delete 'enable_jquery_migrate_helper_notification'

