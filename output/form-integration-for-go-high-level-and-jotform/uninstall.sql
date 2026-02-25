-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghl_jotform_webhook_secret', 'ghljotform_clnt_id', 'ghljotform_clnt_scrt', 'ghl_jotform_api', 'ghljotform_oauth_state');

