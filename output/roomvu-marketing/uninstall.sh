#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rvm_cron_text'
wp option delete 'rvm_cron_text_runs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%posts_settings'"

# Delete Transients
wp transient delete 'flash_error_message'

