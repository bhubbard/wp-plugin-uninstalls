#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_CFACF7_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_CFACF7_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_CFACF7_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_CFACF7_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_CFACF7_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_CFACF7_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_CFACF7_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_CFACF7_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_CFACF7_api_secret'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_CFACF7_api_secret'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_CFACF7_api_secret'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_CFACF7_api_secret'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_CFACF7_form_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_CFACF7_form_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_CFACF7_form_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_CFACF7_form_fields'"
