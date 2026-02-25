-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nr_ps_id', 'nr_access_token', 'nr_client_id', 'nr_client_secret');

