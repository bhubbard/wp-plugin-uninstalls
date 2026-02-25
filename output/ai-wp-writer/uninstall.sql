-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ai_assistant', 'aiWriterCronCheck', 'aiRewritesData', 'aiArticlesAutoGenData', 'aiImagesData', 'aiassist_gpt_key', '_aiassist_generator', 'activated_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_aiassist_revision_meta_title', '_aiassist_revision_meta_description', '_aiassist_revision_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_title', '_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_aiassist_revision_meta_title', '_aiassist_revision_meta_description', '_aiassist_revision_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_title', '_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_aiassist_revision_meta_title', '_aiassist_revision_meta_description', '_aiassist_revision_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_title', '_description', '_aioseo_title', '_aioseo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_image_alt', '_aiassist_revision_meta_title', '_aiassist_revision_meta_description', '_aiassist_revision_thumbnail_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', 'rank_math_title', 'rank_math_description', '_title', '_description', '_aioseo_title', '_aioseo_description');

