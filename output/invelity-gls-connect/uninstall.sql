-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('invelity_gls_connect_options', 'invelity_gls_export_options', 'invelity-gls-connect-ad', 'invelity-plugins-description', 'invelity-plugins-ad');

