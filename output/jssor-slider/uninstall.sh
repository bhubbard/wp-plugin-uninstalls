#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_jssor_slider_instance_id'
wp option delete 'wp_jssor_slider_db_version'
wp option delete 'wjssl-update-check-short'
wp option delete 'wjssl-latest-version'
wp option delete 'wjssl-stable-version'
wp option delete 'wjssl-beta-version'
wp option delete 'wjssl-update-check'
wp option delete 'wjssl_acckey'
wp option delete 'wjssl_purchcode'
wp option delete 'wjssl_actcode'
wp option delete 'wjssl_activate_request_time'

# Clear Cron Jobs
wp cron event delete 'wjssl_check_slider_files_hook'

