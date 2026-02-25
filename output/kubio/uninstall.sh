#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kubio_ai_key'
wp option delete 'theme_mods_colibri-wp'
wp option delete 'theme_mods_kubio'
wp option delete 'theme_switched'
wp option delete '_kubio_dismissable_notices'
wp option delete 'kubio_is_fresh_site'
wp option delete '_kubio_is_siteground_imported'
wp option delete 'gutenberg-experiments'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'nav_menu_options'
wp option delete 'fresh_site'
wp option delete 'rewrite_rules'
wp option delete '__kubio_instance_flags'

# Delete Transients
wp transient delete 'kubio-demo-sites-repository'
wp transient delete 'kubio_skip_after_theme_switch'
wp transient delete 'pt_importer_data'
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kubio_ai_page_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kubio_ai_page_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kubio_ai_page_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kubio_ai_page_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saved_in_kubio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kubio_created_at_activation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kubio_created_at_activation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kubio_created_at_activation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kubio_created_at_activation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kubio_template_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kubio_template_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kubio_template_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kubio_template_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popup_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'triggers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'triggers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'triggers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'triggers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kubio_recommendation_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kubio_recommendation_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kubio_recommendation_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kubio_recommendation_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_menu_item'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_has_attachment_refs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wxr_import_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
