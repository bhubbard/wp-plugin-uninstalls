-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xloyalty_notice_dismissed', 'xloyalty_license_key', 'xloyalty_registration_company', 'xloyalty_registration_email', 'xloyalty_points_per_euro', 'xloyalty_conversion_rate');

