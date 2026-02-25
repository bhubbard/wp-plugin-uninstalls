#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_templatiq_redirect_to_dashboard'
wp option delete '_templatiq_redirect_to_template'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete '_templatiq_selected_builder'
wp option delete 'templatiq-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'templatiq_sites_%'"
wp option delete 'templatiq-erase-existing-imported-data'
wp option delete 'templatiq_sites_import_data'
wp option delete 'templatiq_full_template_import_complete'
wp option delete 'bsf_analytics_optin'
wp option delete 'directorist_db_version'
wp option delete 'templatiq_allow_tracking'
wp option delete 'templatiq-sites-favorites'
wp option delete 'templatiq-sites-saved-images'
wp option delete '_templatiq_imported_menu_map'
wp option delete '_templatiq_imported_template_parts'
wp option delete '_templatiq_logo_width'
wp option delete 'templatiq_sites_imported_wxr_id'
wp option delete '_templatiq_sites_old_site_options'
wp option delete 'templatiq-sites-last-export-checksums-latest'
wp option delete 'templatiq-sites-last-export-checksums'
wp option delete 'templatiq_sites_recent_import_log_file'
wp option delete 'site_logo'
wp option delete 'templatiq-erase-existing-directorist-data'
wp option delete 'templatiq-import-directorist-listings'
wp option delete 'templatiq_sites_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete '_templatiq_imported_attachments'
wp option delete 'templatiq_imported_items_mapping'
wp option delete '_templatiq_imported_bricks_nav_menu'
wp option delete 'templatiq_import_directory_listings'
wp option delete 'templatiq_sites_directory_types_ids_mapping'
wp option delete 'templatiq_sites_cached_import_error'
wp option delete 'templatiq_sites_has_sent_error_report'

# Delete Transients
wp transient delete 'templatiq-sites-cron-test-ok'
wp transient delete 'templatiq_sites_batch_process_started'
wp transient delete 'templatiq_sites_import_started'
wp transient delete '_directorist_setup_page_redirect'
wp transient delete 'templatiq_disable_import_default_directory'
wp transient delete 'elementor_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'generate_analytics_lead'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'templatiq-images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'templatiq-images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'templatiq-images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'templatiq-images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templatiq_sites_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templatiq_sites_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templatiq_sites_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templatiq_sites_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templatiq_sites_imported_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templatiq_sites_imported_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templatiq_sites_imported_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templatiq_sites_imported_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templatiq_sites_enable_for_batch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templatiq_sites_enable_for_batch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templatiq_sites_enable_for_batch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templatiq_sites_enable_for_batch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_source_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_templatiq_sites_imported_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_templatiq_sites_imported_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_templatiq_sites_imported_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_templatiq_sites_imported_term'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_directory_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fm_plans'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fm_plans'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fm_plans'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fm_plans'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
