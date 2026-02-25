-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('c_wp_lp_attr', 'c_wp_lp_prefix', 'c_wp_lp_first_class', 'c_wp_lp_last_class');

