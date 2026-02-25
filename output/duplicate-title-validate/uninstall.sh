#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duplicate_title_validate_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dtv_duplicate_title_error_%' OR option_name LIKE '_site_transient_dtv_duplicate_title_error_%'"

