-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hide_content_message', 'hide_content_links', 'hide_content_text_signup', 'hide_content_url_signup', 'hide_content_text_login', 'hide_content_url_login');

