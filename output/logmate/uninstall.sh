#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debugm_log_file_path'
wp option delete 'debugm_js_log_file_path'
wp option delete 'debugm_js_error_logging'
wp option delete 'debugm_log_status'
wp option delete 'debugm_autorefresh'
wp option delete 'debugm_modify_script_debug'
wp option delete 'debugm_process_non_utc_timezones'
wp option delete 'debugm_log_status_changed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'debugm_%'"
wp option delete 'debugm_wp_config_backup'

# Delete Transients
wp transient delete 'debugm_activation_redirect'

