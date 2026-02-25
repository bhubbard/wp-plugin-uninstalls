#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'beyond_wpdb_data_init_name'
wp option delete 'beyond_wpdb_virtual_column_name'

