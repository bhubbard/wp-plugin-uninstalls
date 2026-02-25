-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('s_popup_title', 's_popup_post', 's_popup_page', 's_popup_posts_per_page');

