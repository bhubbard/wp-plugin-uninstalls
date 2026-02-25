#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eafl_migrated_to_version'
wp option delete 'eafl_specific_migrations'
wp option delete 'eafl_find_relations'
wp option delete 'eafl_flush'
wp option delete 'eafl_settings'
wp option delete 'eafl_activated'
wp option delete 'wpurp_cache'
wp option delete 'eafl_option'
wp option delete 'eafl_click_db_version'
wp option delete 'eafl_relation_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"

# Delete Transients
wp transient delete 'eafl_import_links_csv'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafl_feedback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafl_feedback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafl_feedback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafl_feedback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafl_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafl_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafl_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafl_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafl_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafl_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafl_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafl_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafl_clicks_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafl_clicks_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafl_clicks_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafl_clicks_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafl_clicks_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafl_clicks_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafl_clicks_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafl_clicks_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprmp_equipment_eafl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprmp_equipment_eafl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprmp_equipment_eafl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprmp_equipment_eafl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprmp_ingredient_eafl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprmp_ingredient_eafl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprmp_ingredient_eafl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprmp_ingredient_eafl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wprmp_term_eafl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wprmp_term_eafl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wprmp_term_eafl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wprmp_term_eafl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpupg_custom_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eafl_replacement'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eafl_replacement'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eafl_replacement'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eafl_replacement'"
