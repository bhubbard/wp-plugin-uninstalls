-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpes_options', 'wpes_total_plays', 'wpes_carbon_saved');

