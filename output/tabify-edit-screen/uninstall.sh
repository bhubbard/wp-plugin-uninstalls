#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tabify-edit-screen'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tabify_detection_%' OR option_name LIKE '_site_transient_tabify_detection_%'"

