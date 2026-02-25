-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eloquent_post_title_selector', 'eloquent_post_content_selector', 'eloquent_page_title_selector', 'eloquent_page_content_selector');

