#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoaltai_api_key'
wp option delete 'autoaltai_langauge'
wp option delete 'autoaltai_force_lang'
wp option delete 'autoaltai_writing_style'
wp option delete 'autoaltai_generate_title'
wp option delete 'autoaltai_generate_caption'
wp option delete 'autoaltai_generate_description'
wp option delete 'autoaltai_alt_text_min'
wp option delete 'autoaltai_alt_text_max'
wp option delete 'autoaltai_alt_prefix'
wp option delete 'autoaltai_alt_suffix'
wp option delete 'autoaltai_upload_enabled'
wp option delete 'autoaltai_allowed_imagetype'
wp option delete 'autoaltai_skip_filenotfound'
wp option delete 'autoaltai_seo_keywords'
wp option delete 'autoaltai_post_title'
wp option delete 'autoaltai_chatgpt_prompt'
wp option delete 'autoaltai_woo_productname'
wp option delete 'autoaltai_woo_title'
wp option delete 'autoaltai_is_public'
wp option delete 'autoaltai_generate_metadata'
wp option delete 'autoaltai_timeout'
wp option delete 'autoaltai_refresh_img_src'
wp option delete 'autoaltai_log_errors'
wp option delete 'autoaltai_db_version'
wp option delete 'wpseo_taxonomy_meta'

# Delete Transients
wp transient delete 'autoaltai_show_setup_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_autoaltai_bulk_select_generate_%' OR option_name LIKE '_site_transient_autoaltai_bulk_select_generate_%'"

# Direct DB Queries (Fallback)
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'as3cf_filesize_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_additional_keyphrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_additional_keyphrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_additional_keyphrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_additional_keyphrases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wds_focus-keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wds_focus-keywords'"
