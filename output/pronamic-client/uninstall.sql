-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rg_gforms_enable_html5', 'rg_gforms_currency', 'pronamic_client_db_version', 'pronamic_client_phpmailer_sender');

