#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg_gforms_enable_html5'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_queried'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-request'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-review-dismissed'"

# Clear Cron Jobs

