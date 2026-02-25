#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_add'"
wp option delete 'blueimp_lightbox_settings_media_types'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_media_types'"

