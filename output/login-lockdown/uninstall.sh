#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'loginlockdownAdminOptions'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_loginlockdown_unlock_count_%' OR option_name LIKE '_site_transient_loginlockdown_unlock_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_loginlockdown_unlock_%' OR option_name LIKE '_site_transient_loginlockdown_unlock_%'"
wp transient delete 'settings_errors'

