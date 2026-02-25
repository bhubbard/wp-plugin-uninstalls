#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fidelit_api_key'
wp option delete 'fidelit_api_secret'
wp option delete 'fidelit_recupero_password_richiedi_codice_card'
wp option delete 'fidelit_email_registrazione'
wp option delete 'fidelit_email_benvenuto'
wp option delete 'fidelit_email_recupero_password'
wp option delete 'fidelit_url_piattaforma'
wp option delete 'fidelit_api_azienda_id'
wp option delete 'fidelit_api_punto_vendita_id'
wp option delete 'fidelit_privacy'
wp option delete 'fidelit_db_hostname'
wp option delete 'fidelit_db_port'
wp option delete 'fidelit_db_name'
wp option delete 'fidelit_db_username'
wp option delete 'fidelit_db_password'
wp option delete 'fidelit_custom_css'
wp option delete 'fidelit_enable_html_email'

