#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eh_turnstile_site_key'
wp option delete 'eh_turnstile_secret_key'
wp option delete 'eh_turnstile_breakdance_enabled'
wp option delete 'eh_turnstile_breakdance_disabled_ids'
wp option delete 'eh_turnstile_verified'
wp option delete 'eh_turnstile_last_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

