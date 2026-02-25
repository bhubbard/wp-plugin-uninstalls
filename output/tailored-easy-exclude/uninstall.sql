-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tailored_post_excluded_pages', 'tailored_page_excluded_pages');
DELETE FROM wp_options WHERE option_name LIKE '%_excluded_pages';

