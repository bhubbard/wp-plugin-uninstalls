#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'apbd_prov_%'"
wp option delete 'active_sitewide_plugins'
wp option delete 'health-check-allowed-plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"

