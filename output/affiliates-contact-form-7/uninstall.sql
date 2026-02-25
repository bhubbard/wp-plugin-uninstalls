-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aff_def_ref_calc_key', 'aff_def_ref_calc_value', 'active_sitewide_plugins');

