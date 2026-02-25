#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'updfc_enable_%'"
wp option delete 'updfc_selected_roles'

