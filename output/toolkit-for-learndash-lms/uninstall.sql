-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tkflld_options', 'tkflld_learn_dash_update_flag');

