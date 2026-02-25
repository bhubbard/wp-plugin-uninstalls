-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pipdig_links', 'pipdig_bloglovin_btn_url');

