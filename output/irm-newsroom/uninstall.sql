-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_key', 'site_type', 'site_directory', 'emailunsub_landing_page', 'share_price_toggle', 'email_landing_page');

