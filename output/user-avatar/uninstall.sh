#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fileupload_maxk'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_avatar_file_%' OR option_name LIKE '_site_transient_avatar_file_%'"

