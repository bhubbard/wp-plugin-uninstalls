#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsimgaltgen_use_seo_keywords'
wp option delete 'wsimgaltgen_auto_generate_on_upload'
wp option delete 'wsimgaltgen_api_key'
wp option delete 'wsimgaltgen_language'
wp option delete 'wsimgaltgen_generate_title'
wp option delete 'wsimgaltgen_generate_alt'
wp option delete 'wsimgaltgen_generate_description'
wp option delete 'wsimgaltgen_generate_caption'
wp option delete 'wsimgaltgen_api_error'

# Delete Transients
wp transient delete 'wsimgaltgen_recent_uploads'
wp transient delete 'wsimgaltgen_api_validation'
wp transient delete 'wsimgaltgen_credits'

# Clear Cron Jobs
wp cron event delete 'wsimgaltgen_process_upload_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_schema_article_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_structured_data_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_structured_data_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_structured_data_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_structured_data_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_keywordresults'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_keywordresults'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_keywordresults'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_keywordresults'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw_text_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_saved_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_saved_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_saved_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_saved_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keyphrases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keyphrases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keyphrases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keyphrases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
