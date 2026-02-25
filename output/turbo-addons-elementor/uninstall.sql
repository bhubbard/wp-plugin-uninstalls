-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('turbo_addons_widgets', 'turbo_addons_extensions', 'trad_info_text_date', 'trad_install_date', 'trad_hide_tinfo1', 'trad_turbo_addons_template_items', 'trad_turbo_addons_version', 'turbo_addons_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_like_count', '_post_unlike_count', 'trad_post_views_count', '_wp_attachment_image_alt', 'category_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_like_count', '_post_unlike_count', 'trad_post_views_count', '_wp_attachment_image_alt', 'category_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_like_count', '_post_unlike_count', 'trad_post_views_count', '_wp_attachment_image_alt', 'category_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_like_count', '_post_unlike_count', 'trad_post_views_count', '_wp_attachment_image_alt', 'category_image');

