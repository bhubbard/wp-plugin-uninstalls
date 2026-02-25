#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ai_translate_settings'
wp option delete 'ai_translate_slugs_schema_version'
wp option delete 'rewrite_rules'
wp option delete 'ai_translate_slug_warmup_done'
wp option delete 'ai_translate_rules_flushed_v1'
wp option delete 'ai_translate_rules_flushed_v2'
wp option delete 'ai_translate_cache_meta_populated'
wp option delete 'ai_translate_cache_meta_indexes_applied'

# Delete Transients
wp transient delete 'ai_translate_rules_checked'
wp transient delete 'ai_translate_cache_table_data'
wp transient delete 'ai_translate_cache_meta_last_cleanup'
wp transient delete 'ai_tr_slugs_schema'
wp transient delete 'nav_menu'
wp transient delete 'nav_menu_items'
wp transient delete 'nav_menu_cache'

# Clear Cron Jobs
wp cron event delete 'ai_translate_sync_cache_metadata'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_translate_original_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_translate_original_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_translate_original_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_translate_original_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_is_language_switcher'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_is_language_switcher'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_is_language_switcher'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_is_language_switcher'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_switcher_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_switcher_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_switcher_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_switcher_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_show_flags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_show_flags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_show_flags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_show_flags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_show_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_show_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_show_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_show_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
