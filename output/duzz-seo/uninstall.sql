-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_analytics_code', 'google_webmaster_code', 'pinterest_code', 'bing_webmaster_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_title_tag', 'post_meta_title', 'post_meta_description', 'og_title', 'og_description', 'og_url', 'og_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_title_tag', 'post_meta_title', 'post_meta_description', 'og_title', 'og_description', 'og_url', 'og_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_title_tag', 'post_meta_title', 'post_meta_description', 'og_title', 'og_description', 'og_url', 'og_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_title_tag', 'post_meta_title', 'post_meta_description', 'og_title', 'og_description', 'og_url', 'og_image');

