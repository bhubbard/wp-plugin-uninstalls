#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bit_wc_zoho_books_integrate_key_data'
wp option delete 'bit_wcb_form_secret_api_key'
wp option delete 'bit_wc_zoho_books_installed'
wp option delete 'bit_wc_zoho_books_version'

# Delete Transients
wp transient delete 'bit_wc_zoho_books_activation_redirect'
wp transient delete 'bit_wc_zoho_books_prevent_tracker_notice'

