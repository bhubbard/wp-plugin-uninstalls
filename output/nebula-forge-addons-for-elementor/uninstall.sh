#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'nfa_changelog_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfa_form_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfa_form_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfa_form_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfa_form_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfa_form_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfa_form_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfa_form_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfa_form_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfa_form_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfa_form_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfa_form_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfa_form_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfa_form_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfa_form_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfa_form_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfa_form_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfa_form_ua'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfa_form_ua'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfa_form_ua'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfa_form_ua'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nfa_form_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nfa_form_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nfa_form_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nfa_form_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nfa_dismissed_welcome'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nfa_dismissed_welcome'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nfa_dismissed_welcome'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nfa_dismissed_welcome'"
