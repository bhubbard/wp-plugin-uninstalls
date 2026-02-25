-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vi_title_text', 'vi_title_check', 'vi_excerpt_text', 'vi_excerpt_check', 'vi_content_text', 'vi_content_check');

