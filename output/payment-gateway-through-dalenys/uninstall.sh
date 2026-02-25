#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dalenys_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dalenys_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dalenys_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dalenys_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dalenys_selected_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dalenys_selected_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dalenys_selected_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dalenys_selected_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dalenys_cardholder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dalenys_cardholder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dalenys_cardholder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dalenys_cardholder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dalenys_SCHEMETRANSACTIONID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dalenys_SCHEMETRANSACTIONID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dalenys_SCHEMETRANSACTIONID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dalenys_SCHEMETRANSACTIONID'"
