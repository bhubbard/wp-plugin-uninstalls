#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Waymark_Settings'
wp option delete 'waymark_activation_redirect'
wp option delete 'Waymark_Settings_Backup'
wp option delete 'Waymark_Version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'Waymark_Settings_%'"

