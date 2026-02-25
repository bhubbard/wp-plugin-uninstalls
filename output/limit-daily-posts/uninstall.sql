-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lp_num_limit', 'lp_per_author', 'lp_force_delete');

