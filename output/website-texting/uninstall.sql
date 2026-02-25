-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('leadsms_licensekey', 'leadsms_visibility', 'leadsms_appearance');

