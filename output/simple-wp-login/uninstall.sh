#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpls_selected_design'
wp option delete 'wpls_logo_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpls_%'"

