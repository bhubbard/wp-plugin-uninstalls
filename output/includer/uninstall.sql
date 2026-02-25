-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('includer_callrail_id', 'includer_clicky_id', 'includer_ga_id', 'includer_ga_enable', 'includer_clicky_enable', 'includer_clickcease_enable', 'includer_callrail_enable');

