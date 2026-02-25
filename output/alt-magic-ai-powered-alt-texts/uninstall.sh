#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alt_magic_private_site'
wp option delete 'alt_magic_api_key'
wp option delete 'alt_magic_user_id'
wp option delete 'alt_magic_account_active'
wp option delete 'alt_magic_max_concurrency'
wp option delete 'alt_magic_auto_generate'
wp option delete 'alt_magic_alt_gen_type'
wp option delete 'alt_magic_language'
wp option delete 'alt_magic_use_for_title'
wp option delete 'alt_magic_use_for_caption'
wp option delete 'alt_magic_use_for_description'
wp option delete 'alt_magic_prepend_string'
wp option delete 'alt_magic_append_string'
wp option delete 'alt_magic_extra_prompt'
wp option delete 'alt_magic_use_seo_keywords'
wp option delete 'alt_magic_use_post_title'
wp option delete 'alt_magic_refresh_alt_text'
wp option delete 'alt_magic_woocommerce_use_product_name'
wp option delete 'alt_magic_auto_rename_on_upload'
wp option delete 'alt_magic_enable_redirections'
wp option delete 'alt_magic_rename_use_seo_keywords'
wp option delete 'alt_magic_rename_use_post_title'
wp option delete 'alt_magic_rename_use_woocommerce_product_name'
wp option delete 'alt_magic_update_posts'
wp option delete 'alt_magic_update_excerpts'
wp option delete 'alt_magic_update_postmeta'
wp option delete 'alt_magic_update_guid'
wp option delete 'alt_magic_rename_language'
wp option delete 'altm_debug_mode'

# Delete Transients
wp transient delete '_alt_magic_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altm_original_image_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altm_original_image_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altm_original_image_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altm_original_image_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altm_rename_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altm_rename_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altm_rename_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altm_rename_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altm_rename_refs_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altm_rename_refs_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altm_rename_refs_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altm_rename_refs_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_altm_original_filename'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_altm_original_filename'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_altm_original_filename'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_altm_original_filename'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
