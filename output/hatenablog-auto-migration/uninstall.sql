-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%-hatena-blog-url-option';
DELETE FROM wp_options WHERE option_name LIKE '%-hatena-blog-check-option';

