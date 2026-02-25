-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tariffuxx_partner_id', 'tariffuxx_custom_css', 'tariffuxx_twl_version');

