-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dizetc_defcon_enable_post', 'dizetc_defcon_enable_page', 'dizetc_defcon_content_post', 'dizetc_defcon_content_page');

