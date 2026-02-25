-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fidelit_api_key', 'fidelit_api_secret', 'fidelit_recupero_password_richiedi_codice_card', 'fidelit_email_registrazione', 'fidelit_email_benvenuto', 'fidelit_email_recupero_password', 'fidelit_url_piattaforma', 'fidelit_api_azienda_id', 'fidelit_api_punto_vendita_id', 'fidelit_privacy', 'fidelit_db_hostname', 'fidelit_db_port', 'fidelit_db_name', 'fidelit_db_username', 'fidelit_db_password', 'fidelit_custom_css', 'fidelit_enable_html_email');

