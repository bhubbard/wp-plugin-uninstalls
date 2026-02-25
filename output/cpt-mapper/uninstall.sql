-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srcpt_cpt', 'srcpt_tax', 'srcpt_meta', 'srcpt_opt_meta', 'metaid', 'type');

