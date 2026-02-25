-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('on_google1_posts', 'on_google1_pages', 'on_google1_homepage', 'on_google1_size', 'on_google1_count', 'on_google1_callback', 'on_google1_top', 'on_google1_bottom', 'on_google1_lang');

