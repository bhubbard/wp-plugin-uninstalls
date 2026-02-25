#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cel_new_logs'
wp option delete 'cel_ab_show'
wp option delete 'custom_error_log'
wp option delete 'custom_notice_log'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"

