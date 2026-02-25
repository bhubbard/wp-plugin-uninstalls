#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdt_quick_profiler'
wp option delete 'wpdt_log_predefined_php'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpdt_%'"
wp option delete 'save_log_predefined_php'
wp option delete 'wpdt_login_redirect'

