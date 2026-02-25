#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'medbeafgallery_all_category_id'
wp option delete 'medbeafgallery_settings'
wp option delete 'medbeafgallery_all_category_image'
wp option delete 'medbeafgallery_color_hash'
wp option delete 'medbeafgallery_dynamic_css_url'
wp option delete 'medbeafgallery_version'
wp option delete 'medbeafgallery_db_version'

# Delete Transients
wp transient delete 'medbeafgallery_library_warning'
wp transient delete 'medbeafgallery_free_to_pro_migration'
wp transient delete 'medbeafgallery_cases_cache'
wp transient delete 'medbeafgallery_categories_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_main_before_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_main_before_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_main_before_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_main_before_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_main_after_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_main_after_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_main_after_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_main_after_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_additional_image_pairs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_additional_image_pairs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_additional_image_pairs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_additional_image_pairs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'medbeafgallery_category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'medbeafgallery_category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'medbeafgallery_category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'medbeafgallery_category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_image_pairs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_image_pairs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_image_pairs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_image_pairs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_age'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_age'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_age'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_age'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_procedure_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_procedure_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_procedure_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_procedure_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_cropped_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_cropped_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_cropped_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_cropped_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_original_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_original_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_original_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_original_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'medbeafgallery_is_default_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'medbeafgallery_is_default_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'medbeafgallery_is_default_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'medbeafgallery_is_default_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_main_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_main_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_main_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_main_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_recovery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_recovery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_recovery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_recovery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_results'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_results'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_results'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_results'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_procedure_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_procedure_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_procedure_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_procedure_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_medbeafgallery_case_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_medbeafgallery_case_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_medbeafgallery_case_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_medbeafgallery_case_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'medbeafgallery_warning_acknowledged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'medbeafgallery_warning_acknowledged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'medbeafgallery_warning_acknowledged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'medbeafgallery_warning_acknowledged'"
