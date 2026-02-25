#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_memory_limit_manager_errors_%' OR option_name LIKE '_site_transient_memory_limit_manager_errors_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_memory_limit_manager_attempted_values_%' OR option_name LIKE '_site_transient_memory_limit_manager_attempted_values_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_memory_limit_manager_success_%' OR option_name LIKE '_site_transient_memory_limit_manager_success_%'"
wp transient delete 'memory_limit_manager_success'
wp transient delete 'memory_limit_manager_errors'

