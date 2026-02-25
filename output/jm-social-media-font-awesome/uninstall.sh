#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jm_awesome_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jm_awesome_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jm_awesome_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jm_awesome_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jm_awesome_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jm_awesome_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jm_awesome_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jm_awesome_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jm_awesome_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jm_awesome_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jm_awesome_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jm_awesome_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jm_awesome_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jm_awesome_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jm_awesome_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jm_awesome_content'"
