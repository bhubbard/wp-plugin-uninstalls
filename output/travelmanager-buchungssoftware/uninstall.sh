#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tm_colors'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_basket_%' OR option_name LIKE '_site_transient_basket_%'"

