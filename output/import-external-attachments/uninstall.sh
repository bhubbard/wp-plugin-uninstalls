#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'external_image_whichimgs'
wp option delete 'external_image_excludes'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_saving_imported_images_%' OR option_name LIKE '_site_transient_saving_imported_images_%'"

