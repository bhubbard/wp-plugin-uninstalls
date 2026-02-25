#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ljxp_skip_cats'
wp option delete 'ljxp_password'
wp option delete 'ljxp_host'
wp option delete 'ljxp_username'
wp option delete 'ljxp_custom_name_on'
wp option delete 'ljxp_custom_name'
wp option delete 'ljxp_privacy'
wp option delete 'ljxp_comments'
wp option delete 'ljxp_tag'
wp option delete 'ljxp_more'
wp option delete 'ljxp_community'
wp option delete 'ljxp_header_loc'
wp option delete 'ljxp_custom_header'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Alternate_Annonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Alternate_Annonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Alternate_Annonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Alternate_Annonce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'no_lj'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_privacy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljxp_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ljID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ljID'"
