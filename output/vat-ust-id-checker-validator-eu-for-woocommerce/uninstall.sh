#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctviwoo_private_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctviwoo_private_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctviwoo_private_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctviwoo_private_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctviwoo_vat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctviwoo_vat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctviwoo_vat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctviwoo_vat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_vat_exempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number_is_valid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vat_number_validated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vat_number_validated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vat_number_validated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vat_number_validated'"
