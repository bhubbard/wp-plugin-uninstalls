-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polldaddy_api_key', 'crowdsignal_api_key_secret', 'polldaddy_settings', 'polldaddy_use_ssl', 'polldaddy_multiple_accounts', 'polldaddy_load_poll_inline', 'pd-rating-usercode', 'pd-rating-title-filter', 'pd-rating-posts-id', 'pd-rating-pages-id', 'pd-rating-comments-id', 'polldaddy_usercode_user', 'crowdsignal_user_code', 'jetpack_active_modules', 'crowdsignal_api_key', 'pd-rich-snippets', 'pd-rating-posts', 'pd-rating-posts-index', 'pd-rating-posts-pos', 'pd-rating-posts-index-pos', 'pd-rating-pages', 'pd-rating-pages-pos', 'pd-rating-comments', 'pd-rating-comments-pos', 'pd-rating-exclude-post-ids', 'pd-rating-exclude-page-ids');
DELETE FROM wp_options WHERE option_name LIKE 'pd-usercode-%';
DELETE FROM wp_options WHERE option_name LIKE '%-id';
DELETE FROM wp_options WHERE option_name LIKE 'pd-rating-%';

