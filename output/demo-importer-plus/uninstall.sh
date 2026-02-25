#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'theme_mods_%'"
wp option delete 'demo-importer-plus-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'demo_importer_plus_sites_%'"
wp option delete 'elementor_load_fa4_shim'
wp option delete '__demo_importer_plus_site_options'
wp option delete 'sidebars_widgets'
wp option delete 'elementor_active_kit'
wp option delete '_demo_importer_posts_mapping'
wp option delete 'wp_travel_engine_settings'
wp option delete 'wplang'
wp option delete '_demo_importer_terms_mapping'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'demo_importer_plus_settings'
wp option delete 'demo_importer_plus_import_data'
wp option delete '_demo_importer_plus_old_customizer_data'
wp option delete 'demo_importer_plus_imported_wxr_id'
wp option delete 'demo_importer_plus_import_complete'
wp option delete 'demo_importer_plus_cf7_ids_mapping'
wp option delete 'demo_importer_plus_recent_import_log_file'
wp option delete 'demo-importer-plus-batch-status-string'
wp option delete '_demo_importer_plus_sites_old_customizer_data'
wp option delete '_demo_importer_plus_old_site_options'
wp option delete '_demo_importer_plus_old_widgets_data'
wp option delete 'primary_pricing_category'
wp option delete 'demo_importer_plus_sites_import_data'
wp option delete 'demo_importer_plus_sites_import_complete'
wp option delete 'demo-importer-plus-last-export-checksums-latest'
wp option delete 'demo-importer-plus-last-export-checksums'
wp option delete 'active_sitewide_plugins'
wp option delete 'sites-tags'
wp option delete 'demo-importerplus-sites-categories'
wp option delete 'demo-importer-plus-blocks-categories'
wp option delete 'demo-importerplus-license-page-builder'
wp option delete 'demo-importer-plus-sites-page-builders'
wp option delete 'demo-importer-plus-blocks-batch-status-string'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'demo-importer-plus-blocks-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'demo-importer-plus-sites-and-pages-page-%'"
wp option delete 'widget_media_image'
wp option delete 'demo-importer-plus-batch-status'
wp option delete 'demo-importer-plus-batch-is-complete'

# Delete Transients
wp transient delete 'demo-importer-plus-import-check'
wp transient delete 'demo_imprt_all_sites_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_upload_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_upload_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_upload_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_upload_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demo_importer_enable_for_batch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demo_importer_enable_for_batch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demo_importer_enable_for_batch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demo_importer_enable_for_batch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demo_importer_plus_sites_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demo_importer_plus_sites_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demo_importer_plus_sites_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demo_importer_plus_sites_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demo_importer_plus_sites_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demo_importer_plus_sites_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demo_importer_plus_sites_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demo_importer_plus_sites_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demo_importer_plus_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demo_importer_plus_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demo_importer_plus_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demo_importer_plus_imported_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trip_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trip_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trip_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trip_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'package-categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'package-categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'package-categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'package-categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_demo_importer_plus_hotlink_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_demo_importer_plus_hotlink_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_demo_importer_plus_hotlink_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_demo_importer_plus_hotlink_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
