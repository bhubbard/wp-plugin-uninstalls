#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'readoxin_class_sync_mode'
wp option delete 'readoxin_class_storage_type'
wp option delete 'ct_components_classes'
wp option delete 'ct_style_folders'
wp option delete 'oxygen_options_autoload'
wp option delete 'oxygen_vsb_google_fonts_cache'
wp option delete 'readoxin_font_mappings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_readoxin_file_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_readoxin_file_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_readoxin_file_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_readoxin_file_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_readoxin_filesize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_readoxin_filesize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_readoxin_filesize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_readoxin_filesize'"
