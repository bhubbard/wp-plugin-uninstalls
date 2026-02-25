-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('librafire_pinpoints_deferred_admin_notices', 'librafire_pinpoints_version', 'lf_caption_text_color', 'lf_default_dot_size', 'lf_caption_text_font_size', 'lf_default_dot_caption_opacity');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'lf_post_dots_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'lf_post_dots_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'lf_post_dots_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lf_post_dots_%';

