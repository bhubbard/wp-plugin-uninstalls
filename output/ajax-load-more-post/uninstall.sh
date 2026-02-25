#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'richpostslistandgrid_license_status'
wp option delete 'richpostslistandgrid_license_key'
wp option delete 'richpostslistandgrid_license_reff'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ik_rplg_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ik_rplg_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ik_rplg_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ik_rplg_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vcode'"
