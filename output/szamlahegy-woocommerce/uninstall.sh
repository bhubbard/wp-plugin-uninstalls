#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'szamlahegy_wc_api_key'
wp option delete 'szamlahegy_wc_default_productnr'
wp option delete 'szamlahegy_wc_test'
wp option delete 'szamlahegy_wc_invoice_type'
wp option delete 'szamlahegy_wc_server_url'
wp option delete 'szamlahegy_wc_generate_auto'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_szamlahegy_wc_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_szamlahegy_wc_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_szamlahegy_wc_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_szamlahegy_wc_response'"
