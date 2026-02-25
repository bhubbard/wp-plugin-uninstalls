#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dtbk_keep_tables_on_uninstall'
wp option delete 'dtbk_cron_enabled'
wp option delete 'dtbk-version'
wp option delete 'dtbk_activation_status'
wp option delete 'dtbk_token'
wp option delete 'dtbk_version'

# Delete Transients
wp transient delete 'drbk_cron_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managedynamic-table-blocks_page_list_dynamic_table_blockscolumnshidden'"
