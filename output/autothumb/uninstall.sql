-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autothumb_apply_the_content', 'autothumb_clean_urls', 'autothumb_clean_urls_path');

