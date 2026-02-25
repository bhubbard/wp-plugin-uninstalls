#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagouno_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagouno_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagouno_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagouno_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagouno_cuotas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagouno_cuotas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagouno_cuotas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagouno_cuotas'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagouno_hidden_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagouno_hidden_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagouno_hidden_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagouno_hidden_total'"
