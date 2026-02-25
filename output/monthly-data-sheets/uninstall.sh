#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mds_db_version'
wp option delete 'monthly_data_sheets_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mds_managers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mds_managers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mds_managers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mds_managers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mds_row_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mds_row_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mds_row_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mds_row_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mds_column_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mds_column_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mds_column_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mds_column_names'"
