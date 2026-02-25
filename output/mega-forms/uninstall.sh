#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'megaforms_%'"
wp option delete 'megaforms_db_version'
wp option delete 'megaforms_uninstall'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wp_megaforms_%' OR option_name LIKE '_site_transient_wp_megaforms_%'"

# Clear Cron Jobs
wp cron event delete 'mf_webhook_retry_hook'

