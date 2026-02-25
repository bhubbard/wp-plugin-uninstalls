#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecgf_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecgf_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecgf_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecgf_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecgf_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecgf_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecgf_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecgf_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecgf_form_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecgf_form_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecgf_form_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecgf_form_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
