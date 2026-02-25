#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecpt_cpt_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecpt_cpt_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecpt_cpt_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecpt_cpt_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecpt_cpt_singular_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecpt_cpt_singular_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecpt_cpt_singular_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecpt_cpt_singular_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecpt_cpt_plural_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecpt_cpt_plural_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecpt_cpt_plural_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecpt_cpt_plural_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecpt_cpt_slug_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecpt_cpt_slug_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecpt_cpt_slug_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecpt_cpt_slug_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecpt_cpt_dashicon_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecpt_cpt_dashicon_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecpt_cpt_dashicon_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecpt_cpt_dashicon_name'"
