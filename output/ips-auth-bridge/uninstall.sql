-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipb_install_location', 'ipb_default_group_membership', 'ipb_rounded_profile_pics');

