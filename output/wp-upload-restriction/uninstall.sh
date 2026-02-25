#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpur_selected_mimes'
wp option delete 'wpur_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpur_selected_mimes_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpur_max_upload_unit_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpur_max_upload_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpur_max_upload_restrict%'"
wp option delete 'wpur_custom_types'

