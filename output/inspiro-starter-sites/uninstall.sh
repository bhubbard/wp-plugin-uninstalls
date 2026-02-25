#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inspiro_starter_sites_activation_redirect'
wp option delete 'woocommerce_setup_wizard_options_update_once'
wp option delete 'woocommerce_task_list_hidden'
wp option delete 'woocommerce_task_list_complete'
wp option delete 'woocommerce_task_list_welcome_modal_dismissed'
wp option delete 'inspiro_demo_layout'
wp option delete 'inspiro_starter_sites_imported_demo_id'
wp option delete 'inspiro_starter_sites_importer_elementor_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'elementor_activation_redirect'
wp transient delete 'inspiro_starter_sites_importer_data'
wp transient delete 'inspiro_starter_sites_importer_data_failed_attachment_imports'
wp transient delete 'inspiro_starter_sites_import_menu_mapping'
wp transient delete 'inspiro_starter_sites_import_posts_with_nav_block'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'pt_importer_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_is_custom_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inspiro_starter_sites_importer_enable_for_batch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inspiro_starter_sites_importer_enable_for_batch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inspiro_starter_sites_importer_enable_for_batch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inspiro_starter_sites_importer_enable_for_batch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inspiro_starter_sites_importer_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inspiro_starter_sites_importer_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inspiro_starter_sites_importer_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inspiro_starter_sites_importer_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_inspiro_starter_sites_importer_imported_term'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inspiro_starter_content_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inspiro_starter_content_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inspiro_starter_content_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inspiro_starter_content_notice_dismissed'"
