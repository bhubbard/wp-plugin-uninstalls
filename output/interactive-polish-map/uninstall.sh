#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ipm_districts_%'"
wp option delete 'ipm_type'
wp option delete 'ipm_menu'

