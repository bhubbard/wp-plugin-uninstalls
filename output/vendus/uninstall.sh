#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vendus_plugin_form_config_register'
wp option delete 'vendus_plugin_form_config_exemption'
wp option delete 'vendus_plugin_form_config_exemption_law'
wp option delete 'vendus_plugin_form_config_invoice_type'
wp option delete 'vendus_plugin_form_config_ignore_notes'
wp option delete 'vendus_plugin_config_api_key'
wp option delete 'vendus_plugin_form_config_ignore_check_completed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nif'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nif'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nif'"
