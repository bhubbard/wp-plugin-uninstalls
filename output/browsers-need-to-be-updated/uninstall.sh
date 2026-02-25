#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BNU_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_transient_%' OR option_name LIKE '_site_transient_transient_%'"

