-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_sefurls_date_structure', 'wp_sefurls_author_structure', 'wp_sefurls_page_structure', 'wp_sefurls_category_slug');

