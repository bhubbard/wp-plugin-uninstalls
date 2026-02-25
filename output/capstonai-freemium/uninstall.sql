-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caifr_plugin_freemium_ident', 'caifr_use_boost', 'caifr_boosted_posts_number', 'cai_plugin_debride_ident');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('caifr_meta_title', 'caifr_post_description', 'caifr_post_keywords', '_webp_version', '_wp_attachment_image_alt', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('caifr_meta_title', 'caifr_post_description', 'caifr_post_keywords', '_webp_version', '_wp_attachment_image_alt', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('caifr_meta_title', 'caifr_post_description', 'caifr_post_keywords', '_webp_version', '_wp_attachment_image_alt', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('caifr_meta_title', 'caifr_post_description', 'caifr_post_keywords', '_webp_version', '_wp_attachment_image_alt', '_elementor_data');

