#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csp_manager_admin'
wp option delete 'csp_manager_loggedin'
wp option delete 'csp_manager_frontend'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'csp_manager_%'"

