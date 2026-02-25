#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dss_title_array'
wp option delete 'dss_type_array'
wp option delete 'dss_switch_array'
wp option delete 'dss_sql_string_array'
wp option delete 'dss_debug'
wp option delete 'dss_roles_array'
wp option delete 'dss_store_deleted'
wp option delete 'dss_width_default'
wp option delete 'dss_height_default'
wp option delete 'dss_notepad'
wp option delete 'dss_number_of_sql_statements'

