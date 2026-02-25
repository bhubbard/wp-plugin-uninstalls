#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zm_shbt_fld'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zm_sh_disable_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zm_sh_disable_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zm_sh_disable_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zm_sh_disable_share'"
