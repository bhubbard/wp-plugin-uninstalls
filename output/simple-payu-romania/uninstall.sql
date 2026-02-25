-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sp_spr_payuromania_user', 'sp_spr_payuromania_password');

