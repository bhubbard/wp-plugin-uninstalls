-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invelity_sps_connect_options', 'invelity-plugins-description', 'invelity-plugins-ad', 'invelity-sps-connect-ad');

