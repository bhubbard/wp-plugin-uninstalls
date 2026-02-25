-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('techno_hotjar_page_id', 'techno_hotjar_script');

