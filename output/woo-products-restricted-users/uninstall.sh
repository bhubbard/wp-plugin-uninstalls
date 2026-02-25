#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpru_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpru_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpru_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpru_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpru_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpru_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpru_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpru_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpru_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpru_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpru_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpru_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpru_allowed_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpru_allowed_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpru_allowed_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpru_allowed_products'"
