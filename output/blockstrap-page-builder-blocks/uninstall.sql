-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ayecode-ui-settings', 'blockstrap_recaptcha_keys', 'blockstrap_blocks_compatibility_notice', 'show_comments_cookies_opt_in', 'ayecode_connect_blog_token', 'aui_options', 'wp-font-awesome-settings', 'rgmk_google_map_api_key', 'wp-font-awesome-settings-version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bs_term_bg_color', '_bs_term_text_color');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bs_term_bg_color', '_bs_term_text_color');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bs_term_bg_color', '_bs_term_text_color');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bs_term_bg_color', '_bs_term_text_color');

