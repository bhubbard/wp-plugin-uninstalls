#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_simpleicons_icon_%' OR option_name LIKE '_site_transient_simpleicons_icon_%'"
wp transient delete 'simpleicons_version'
wp transient delete '_simple_icons_activation_redirect'

