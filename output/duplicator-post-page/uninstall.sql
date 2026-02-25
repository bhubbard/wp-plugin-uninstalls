-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duplicator_post_page_installed', 'duplicator_post_page_version');

