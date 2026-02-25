#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qubely_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qubely_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qubely_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qubely_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qubely_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__qubely_available_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__qubely_available_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__qubely_available_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__qubely_available_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__qubely_global_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__qubely_global_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__qubely_global_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__qubely_global_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qubely_interaction_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qubely_interaction_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qubely_interaction_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qubely_interaction_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
