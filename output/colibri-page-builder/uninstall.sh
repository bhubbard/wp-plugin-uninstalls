#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'colibri_page_builder_activation_time'
wp option delete 'colibri-show-tour'
wp option delete 'colibriwp_predesign_front_page_meta'
wp option delete 'colibriwp_predesign_front_page_index'
wp option delete 'colibriwp_activate_theme_name'
wp option delete 'colibri_contact_form_sections_spacing_activation_logic_ran_flag'
wp option delete 'colibri_contact_form_sections_spacing_add_fix'
wp option delete 'colibri_page_builder_demo_sites'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete 'colibri_sync_data_source'
wp option delete 'colibri_page_builder_pro_activation_time'
wp option delete 'colibriwp_builder_license_key'
wp option delete 'colibri_instance_data'
wp option delete 'cp_initialize_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'colibri_manual_create_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_show_on_front'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_page_on_front'"
wp option delete 'colibriwp_fix_wp58_sidebar'
wp option delete 'widget_block'

# Delete Transients
wp transient delete 'colibriwp_used_svg_icons'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'colibri_page_builder_cache'
wp transient delete 'colibri_wp_recommendation_hide_notice'
wp transient delete 'colibri_wpmu_forminator_hide_notice'
wp transient delete 'colibri_demo_import_data'
wp transient delete 'colibriwp_page_builder_check_license'
wp transient delete 'colibriwp_page_builder_check_license_duration'
wp transient delete 'ocdi_importer_data'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'pt_importer_data'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extend_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extend_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extend_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extend_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_context'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extb_json_revision_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extb_json_revision_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extb_json_revision_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extb_json_revision_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_front_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-show-default-editor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_maintainable_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_maintainable_page'"
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
