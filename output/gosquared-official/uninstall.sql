-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('GSOF_gosquared_site_token', 'GSOF_gosquared_identify', 'GSOF_gosquared_gravity_forms');

