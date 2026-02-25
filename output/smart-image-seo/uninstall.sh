#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aimgseo_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aimgseo_bulk_stop_%' OR option_name LIKE '_site_transient_aimgseo_bulk_stop_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aimgseo_bulk_log_%' OR option_name LIKE '_site_transient_aimgseo_bulk_log_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aimgseo_bulk_running_%' OR option_name LIKE '_site_transient_aimgseo_bulk_running_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_copyright'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_copyright'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_copyright'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_copyright'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_keywordsynonyms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_analysis_target_kw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_analysis_target_kw'"
