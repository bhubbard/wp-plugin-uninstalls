#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sirsc_adon_images_seo_settings'
wp option delete 'sirsc_adons_is_bulk_rename'
wp option delete 'sirsc_use_custom_image_sizes'
wp option delete 'sirsc_adon_uploads_files_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_proc_dir'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_proc_item'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_proc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_proc_time'"
wp option delete 'sirsc_settings'
wp option delete 'sirsc_user_custom_rules'
wp option delete 'sirsc_user_custom_rules_usable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'sirsc_monitor_errors'
wp option delete 'sirsc_settings_updated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sirsc_settings_%'"
wp option delete 'sirsc_types_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sirsc_settings%'"
wp option delete 'sirsc_admin_featured_size'
wp option delete 'sirsc_adons_list'
wp option delete 'wp_attachment_pages_enabled'

# Delete Transients
wp transient delete 'sirsc_adon_uploads_folder_summary'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sirsc-adon-check-%' OR option_name LIKE '_site_transient_sirsc-adon-check-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_adons_notice' OR option_name LIKE '_site_transient_%_adons_notice'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seoimg_initial_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seoimg_initial_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seoimg_initial_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seoimg_initial_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seoimg_initial_filepath'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seoimg_initial_filepath'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seoimg_initial_filepath'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seoimg_initial_filepath'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sirsc_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sirsc_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sirsc_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sirsc_attachment_metadata'"
