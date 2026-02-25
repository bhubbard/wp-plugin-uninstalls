#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arpcso_page_cpt_ct_groups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arpcso_page_cpt_ct_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arpcso_page_cpt_ct_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arpcso_page_cpt_ct_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arpcso_page_cpt_ct_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arpcso_page_cpt_ct_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arpcso_page_cpt_ct_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arpcso_page_cpt_ct_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arpcso_page_cpt_ct_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_arpcso_page_cpt_ct_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_arpcso_page_cpt_ct_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_arpcso_page_cpt_ct_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_arpcso_page_cpt_ct_role'"
