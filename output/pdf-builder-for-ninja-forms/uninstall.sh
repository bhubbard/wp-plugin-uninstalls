#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_skip_save'"
wp option delete 'rednao_design_mode'
wp option delete 'automation_dont_show_again'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enable_log'"

