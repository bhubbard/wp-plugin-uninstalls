#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acf_flexcol'
wp option delete 'acf_flexcol_opts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rows_0_column'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rows_0_column'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rows_0_column'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rows_0_column'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rows_0_column'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rows_0_column'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rows_0_column'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rows_0_column'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rows_0_column_0_list_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rows_0_column_0_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rows_0_column_0_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rows_0_column_0_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rows_0_column_0_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rows_0_column_0_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rows_0_column_0_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rows_0_column_0_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rows_0_column_0_content'"
