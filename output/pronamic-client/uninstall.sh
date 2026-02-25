#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rg_gforms_enable_html5'
wp option delete 'rg_gforms_currency'
wp option delete 'pronamic_client_db_version'
wp option delete 'pronamic_client_phpmailer_sender'

