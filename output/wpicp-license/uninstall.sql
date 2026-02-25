-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpicp_license', 'wpicp_wangan', 'wpicp_province', 'wpicp_company', 'wpicp_email', 'wpicp_phone', 'wpicp_edi', 'wpicp_app', 'wpicp_miniapp', 'cn_icp', 'cn_ga');

