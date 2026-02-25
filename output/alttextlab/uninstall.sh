#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alttextlab_update_title'
wp option delete 'alttextlab_update_caption'
wp option delete 'alttextlab_update_description'
wp option delete 'alttextlab_api_key'
wp option delete 'alttextlab_lang'
wp option delete 'alttextlab_model_name'
wp option delete 'alttextlab_auto_generation_enabled'
wp option delete 'alttextlab_keywords'
wp option delete 'alttextlab_ecomm'
wp option delete 'alttextlab_ecomm_use_title'
wp option delete 'alttextlab_ecomm_use_color'
wp option delete 'alttextlab_ecomm_use_material'
wp option delete 'alttextlab_ecomm_color_field'
wp option delete 'alttextlab_ecomm_material_field'
wp option delete 'alttextlab_public'
wp option delete 'alttextlab_alt_prefix'
wp option delete 'alttextlab_alt_suffix'
wp option delete 'alttextlab_timeout'
wp option delete 'alttextlab_error_logs'
wp option delete 'alttextlab_db_version'
wp option delete 'alttextlab_refresh_src_attr'
wp option delete 'alttextlab_type_extensions'
wp option delete 'alttextlab_skip_filenotfound'

# Delete Transients
wp transient delete 'alttextlab_insufficient_credits'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttextlab_review_hidden_%' OR option_name LIKE '_site_transient_alttextlab_review_hidden_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttextlab_bulk_select_generate_%' OR option_name LIKE '_site_transient_alttextlab_bulk_select_generate_%'"
wp transient delete 'alttextlab_setup_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttextlab_bulk_select_generate_redirect_%' OR option_name LIKE '_site_transient_alttextlab_bulk_select_generate_redirect_%'"
wp transient delete 'alttextlab_try_later_notice'
wp transient delete 'alttextlab_api_key_invalid_notice'
wp transient delete 'bulk_generate_alt'
wp transient delete 'alttextlab_enrich_post_content_success'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttextlab_enric_post_generate_%' OR option_name LIKE '_site_transient_alttextlab_enric_post_generate_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alttextlab_enric_post_generate__redirect_%' OR option_name LIKE '_site_transient_alttextlab_enric_post_generate__redirect_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amazonS3_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cloudinary_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_focus-keywords'"
