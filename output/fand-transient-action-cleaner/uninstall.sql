-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fand_tac_delay_failed', 'fand_tac_delay_completed');

