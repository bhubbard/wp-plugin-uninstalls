#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'et_pb_builder_options'

# Clear Cron Jobs
wp cron event delete 'gdpr_cache_worker'
wp cron event delete 'gdpr_cache_scan_front'
wp cron event delete 'gdpr_cache_check_staleness'

