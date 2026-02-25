#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete '__themereps_helper_do_redirect'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_column'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_column'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_column'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_column'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themereps_project_client'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themereps_project_client'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themereps_project_client'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themereps_project_client'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themereps_project_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themereps_project_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themereps_project_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themereps_project_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themereps_project_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themereps_project_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themereps_project_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themereps_project_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themereps_project_close_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themereps_project_close_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themereps_project_close_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themereps_project_close_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themereps_project_budget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themereps_project_budget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themereps_project_budget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themereps_project_budget'"
