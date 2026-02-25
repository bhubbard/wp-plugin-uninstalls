#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rt_wufoo_gravity_subdomain'
wp option delete 'rt_wufoo_gravity_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_map'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_field_map'"

