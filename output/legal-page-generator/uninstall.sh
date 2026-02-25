#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lpg_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'lpg_admin_notices'
wp option delete 'lpg_saving_settings'
wp option delete 'lpg_installed'

