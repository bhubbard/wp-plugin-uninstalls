-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy_banner_enabled', 'easy_banner_title', 'easy_banner_description', 'easy_banner_link_text', 'easy_banner_link');

