#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chrmrtns_puzzlesync_enabled'
wp option delete 'chrmrtns_puzzlesync_auto_detect'
wp option delete 'chrmrtns_puzzlesync_enable_json_ld'
wp option delete 'chrmrtns_puzzlesync_show_flags'
wp option delete 'chrmrtns_puzzlesync_auto_menu_flags'
wp option delete 'chrmrtns_puzzlesync_menu_flags_display'
wp option delete 'chrmrtns_puzzlesync_languages'
wp option delete 'chrmrtns_puzzlesync_migration_version'
wp option delete 'chrmrtns_puzzlesync_enable_validation'
wp option delete 'chrmrtns_puzzlesync_check_url_accessibility'
wp option delete 'chrmrtns_puzzlesync_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chrmrtns_puzzlesync_translation_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chrmrtns_puzzlesync_translation_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chrmrtns_puzzlesync_translation_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chrmrtns_puzzlesync_translation_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_en'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_en'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_en'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_en'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_de'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_de'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_de'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'chrmrtns_puzzlesync_hreflang_de'"
