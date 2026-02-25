#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imagecomply_license_key'
wp option delete 'imagecomply_generate_on_upload'
wp option delete 'imagecomply_medialibrary_show_status'
wp option delete 'imagecomply_medialibrary_show_alt_text'
wp option delete 'imagecomply_optimize_on_upload'
wp option delete 'imagecomply_alt_text_language'
wp option delete 'imagecomply_alt_text_keywords'
wp option delete 'imagecomply_alt_text_neg_keywords'
wp option delete 'imagecomply_alt_text_in_progress'
wp option delete 'imagecomply_optimization_in_progress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imagecomply'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imagecomply'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imagecomply'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imagecomply'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'imagecomply_alt_text_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'imagecomply_alt_text_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'imagecomply_alt_text_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'imagecomply_alt_text_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sq_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpml_media_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
