#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpcoder_enable_debug_log'
wp option delete '_wpcoder_enable_php'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%'"
wp option delete '_wp_coder_snippets'
wp option delete '_wp_coder_tools'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"

# Delete Transients
wp transient delete 'wp_coder_admin_error_php_notice'

