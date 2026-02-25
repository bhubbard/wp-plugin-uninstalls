#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rlic-tareqanwar-releted-story-text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rlic_tareqanwar_post_link_one'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rlic_tareqanwar_post_link_one'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rlic_tareqanwar_post_link_one'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rlic_tareqanwar_post_link_one'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rlic_tareqanwar_post_link_two'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rlic_tareqanwar_post_link_two'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rlic_tareqanwar_post_link_two'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rlic_tareqanwar_post_link_two'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rlic_tareqanwar_post_link_three'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rlic_tareqanwar_post_link_three'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rlic_tareqanwar_post_link_three'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rlic_tareqanwar_post_link_three'"
