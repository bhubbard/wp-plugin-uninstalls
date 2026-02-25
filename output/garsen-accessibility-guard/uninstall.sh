#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'garsen_accessibility_guard_account_info'
wp transient delete 'garsen_accessibility_guard_scan_status_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_garsen_accessibility_guard_connect_state_%' OR option_name LIKE '_site_transient_garsen_accessibility_guard_connect_state_%'"

