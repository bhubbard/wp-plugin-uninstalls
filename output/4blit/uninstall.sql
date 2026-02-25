-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_4blit_api_key', 'wp_4blit_default_publish', 'wp_4blit_default_ublish');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_4blit_post_status', 'wp_4blit_post_date', 'wp_4blit_post_message', 'wp_4blit_post_publish');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_4blit_post_status', 'wp_4blit_post_date', 'wp_4blit_post_message', 'wp_4blit_post_publish');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_4blit_post_status', 'wp_4blit_post_date', 'wp_4blit_post_message', 'wp_4blit_post_publish');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_4blit_post_status', 'wp_4blit_post_date', 'wp_4blit_post_message', 'wp_4blit_post_publish');

