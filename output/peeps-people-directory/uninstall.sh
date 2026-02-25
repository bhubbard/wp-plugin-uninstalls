#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ph_peeps_phone_format'
wp option delete 'ph_peeps_public_cpt'
wp option delete 'ph_peeps_has_archive'
wp option delete 'ph_peeps_cpt_slug'
wp option delete 'ph_peeps_menu_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ph_peeps_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ph_peeps_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ph_peeps_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ph_peeps_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ph_peeps_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ph_peeps_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ph_peeps_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ph_peeps_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ph_peeps_middle_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ph_peeps_middle_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ph_peeps_middle_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ph_peeps_middle_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ph_peeps_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ph_peeps_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ph_peeps_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ph_peeps_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ph_peeps_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ph_peeps_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ph_peeps_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ph_peeps_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ph_peeps_social_links'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ph_peeps_social_links'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ph_peeps_social_links'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ph_peeps_social_links'"
