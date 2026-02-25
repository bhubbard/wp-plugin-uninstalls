-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_redirect_option', 'wp_redirect_option_content', 'wp_redirect_option_comment', 'wp_redirect_option_author', 'wp_redirect_option_exception');

