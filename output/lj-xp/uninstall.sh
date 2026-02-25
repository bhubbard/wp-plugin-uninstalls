#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ljxp'
wp option delete 'ljxp_username'
wp option delete 'ljxp_error_notice'
wp option delete 'lj_xp_error_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_friendsgroups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_friendsgroups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_friendsgroups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_friendsgroups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_userpic'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_userpic'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_userpic'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_userpic'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljURL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljURL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljURL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljURL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_cut_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_cut_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_cut_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_cut_text'"
