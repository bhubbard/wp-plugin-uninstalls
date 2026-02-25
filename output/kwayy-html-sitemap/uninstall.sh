#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kwayyhs_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kwayyhs_active_%'"
wp option delete 'kwayyhs_sortorder'
wp option delete 'global-admin-bar-roles'
wp option delete 'kwayyhs_exclude'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kwayyhs_newname_%'"

