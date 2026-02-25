-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smntcs_custom_logo_link_url', 'smntcs_custom_logo_link_target');

