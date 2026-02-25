#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SnS_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_SnS_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_SnS_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_SnS_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_SnS_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uFp_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uFp_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uFp_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uFp_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_SnS_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_SnS_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_SnS_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_SnS_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uFp_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uFp_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uFp_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uFp_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_SnS'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_SnS'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_SnS'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_SnS'"
