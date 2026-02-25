#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%current_season'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%elementor_main_data_backups'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_backup_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%installed'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seasonalcontent_main_backup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seasonalcontent_main_backup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seasonalcontent_main_backup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seasonalcontent_main_backup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%current_season'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%current_season'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%current_season'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%current_season'"
