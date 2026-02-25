#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dyshorts_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dyshorts_data_%' OR option_name LIKE '_site_transient_dyshorts_data_%'"

