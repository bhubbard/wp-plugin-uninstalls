#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jamat_time_json_path_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jamat_time_json_url_%'"

