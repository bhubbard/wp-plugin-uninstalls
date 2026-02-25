#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rt_table_row'
wp option delete 'rt_table_col'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rt_table_header%'"

