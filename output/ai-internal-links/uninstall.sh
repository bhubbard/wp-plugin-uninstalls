#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiil_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aiil_available_links_%' OR option_name LIKE '_site_transient_aiil_available_links_%'"

