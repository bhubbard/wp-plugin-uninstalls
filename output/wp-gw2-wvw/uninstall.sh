#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'gw2_worlds'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_gw2_wvw_%' OR option_name LIKE '_site_transient_gw2_wvw_%'"

