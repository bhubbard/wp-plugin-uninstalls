#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'awou_settings'
wp option delete 'awou_snapshot'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_awou_%' OR option_name LIKE '_site_transient_awou_%'"

