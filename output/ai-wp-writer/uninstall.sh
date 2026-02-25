#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ai_assistant'
wp option delete 'aiWriterCronCheck'
wp option delete 'aiRewritesData'
wp option delete 'aiArticlesAutoGenData'
wp option delete 'aiImagesData'
wp option delete 'aiassist_gpt_key'
wp option delete '_aiassist_generator'
wp option delete 'activated_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiassist_revision_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiassist_revision_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiassist_revision_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiassist_revision_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiassist_revision_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiassist_revision_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiassist_revision_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiassist_revision_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiassist_revision_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiassist_revision_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiassist_revision_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiassist_revision_thumbnail_id'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
