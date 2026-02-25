-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('virtu_mortgage_agent_id', 'virtu_mortgage_agent_id_from_url', 'virtu_mortgage_ega_tracking_id');

