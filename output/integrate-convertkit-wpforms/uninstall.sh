#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_queried'"
wp option delete 'integrate_convertkit_wpforms_version'
wp option delete 'ck_code_verifier'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed'"

# Clear Cron Jobs
wp cron event delete 'integrate_convertkit_wpforms_refresh_token'

