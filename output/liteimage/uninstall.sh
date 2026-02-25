#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'liteimage_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_liteimage_meta_%' OR option_name LIKE '_site_transient_liteimage_meta_%'"

