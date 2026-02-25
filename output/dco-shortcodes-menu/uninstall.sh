#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dco_sm_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dco_sm_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dco_sm_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dco_sm_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dco_sm_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dco_sm_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dco_sm_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dco_sm_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dco_sm_show_in_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dco_sm_show_in_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dco_sm_show_in_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dco_sm_show_in_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dco_sm_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dco_sm_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dco_sm_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dco_sm_description'"
