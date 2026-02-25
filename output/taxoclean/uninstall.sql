-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('taxoclean_current_taxo', 'taxoclean_max_per_page', 'taxoclean_orphan_level', 'taxoclean_lookalike_level', 'taxoclean_license', 'taxoclean_fast_mode', 'taxoclean_counter');

