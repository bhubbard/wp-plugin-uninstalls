#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cocopopup_plugin_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'popupClosureCount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'popupVieweCount_%'"
wp option delete 'cocopopup_excluded_roles'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_popupClosureCount_%' OR option_name LIKE '_site_transient_popupClosureCount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_popupVieweCount_%' OR option_name LIKE '_site_transient_popupVieweCount_%'"

