#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ta_link_prefix'
wp option delete 'ta_link_prefix_custom'
wp option delete 'ta_uncloak_link_per_link'
wp option delete 'ta_category_to_uncloak'
wp option delete 'ta_legacy_uploader'
wp option delete 'ta_link_redirect_type'
wp option delete 'ta_no_follow'
wp option delete 'ta_new_window'
wp option delete 'ta_pass_query_str'
wp option delete 'ta_additional_rel_tags'
wp option delete 'ta_disable_cat_auto_select'
wp option delete 'ta_show_cat_in_slug'
wp option delete 'ta_activation_code_triggered'
wp option delete 'ta_database_tables_created'
wp option delete 'ta_link_insertion_type'
wp option delete 'ta_disable_text_editor_buttons'
wp option delete 'ta_guided_tour_status'
wp option delete 'ta_enable_link_fixer'
wp option delete 'ta_used_link_prefixes'
wp option delete 'ta_disable_idat_link_class'
wp option delete 'ta_disable_title_attribute'
wp option delete 'ta_disable_visual_editor_buttons'
wp option delete 'idatOptions'
wp option delete 'tap_amazon_associate_tags'
wp option delete 'tap_azon_import_images'
wp option delete 'ta_settings_initialized'
wp option delete 'ta_links_to_uncloak'
wp option delete 'ta_uncloak_link_per_category'
wp option delete 'ta_enable_stats_reporting_module'

# Delete Transients
wp transient delete 'ta_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%image_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%rel_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_category_slug_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ta_category_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idatData'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idatData'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idatData'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idatData'"
