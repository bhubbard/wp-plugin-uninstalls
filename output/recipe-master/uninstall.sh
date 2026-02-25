#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rcpmst_notifications'
wp option delete 'rcpmst-plugin-settings'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'rcpmst_settings'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_ingredient_or_recipe_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_ingredient_or_recipe_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_ingredient_or_recipe_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_ingredient_or_recipe_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_price_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_price_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_price_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_price_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_supplier_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_supplier_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_supplier_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_supplier_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_dietary_notes_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_dietary_notes_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_dietary_notes_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_dietary_notes_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_source_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_source_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_source_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_source_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_recipe_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_recipe_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_recipe_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_recipe_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_abv_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_abv_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_abv_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_abv_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_amount_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_amount_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_amount_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_amount_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_retail_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_retail_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_retail_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_retail_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_storage_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_storage_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_storage_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_storage_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_ingredient_listing_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_ingredient_listing_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_ingredient_listing_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_ingredient_listing_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_allergens_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_allergens_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_allergens_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_allergens_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_ingredients_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_ingredients_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_ingredients_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_ingredients_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_activities_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_activities_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_activities_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_activities_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dietary_notes_display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dietary_notes_display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dietary_notes_display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dietary_notes_display_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dietary_notes_negative_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dietary_notes_negative_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dietary_notes_negative_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dietary_notes_negative_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dietary_notes_any_vs_all'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dietary_notes_any_vs_all'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dietary_notes_any_vs_all'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dietary_notes_any_vs_all'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dietary_notes_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dietary_notes_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dietary_notes_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dietary_notes_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_checklist_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_checklist_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_checklist_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_checklist_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rcpmst_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rcpmst_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rcpmst_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rcpmst_source'"
