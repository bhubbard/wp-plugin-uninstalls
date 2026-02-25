#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'latwaitr_target_languages'
wp option delete 'latwaitr_openai_api_key'
wp option delete 'latwaitr_openai_model'
wp option delete 'latwaitr_website_description'
wp option delete 'latwaitr_translate_title'
wp option delete 'latwaitr_translate_content'
wp option delete 'latwaitr_translate_excerpt'
wp option delete 'latwaitr_translate_custom_fields'
wp option delete 'latwaitr_translate_seo'
wp option delete 'latwaitr_translate_taxonomies'
wp option delete 'latwaitr_translation_prompt'
wp option delete 'latwaitr_enable_telemetry'
wp option delete 'latwaitr_debug_mode'
wp option delete 'latwaitr_manual_check_responses'
wp option delete 'latwaitr_db_version'
wp option delete 'latwaitr_custom_fields_whitelist'
wp option delete 'latwaitr_custom_fields_blacklist'

# Clear Cron Jobs
wp cron event delete 'latwaitr_check_response_statuses'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_latwaitr_elementor_string_objects'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_latwaitr_elementor_string_objects'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_latwaitr_elementor_string_objects'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_latwaitr_elementor_string_objects'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_latwaitr_elementor_original_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_latwaitr_elementor_original_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_latwaitr_elementor_original_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_latwaitr_elementor_original_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpml_post_translation_editor_native'"
