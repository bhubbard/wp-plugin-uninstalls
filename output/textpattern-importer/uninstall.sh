#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'txpuser'
wp option delete 'txppass'
wp option delete 'txpname'
wp option delete 'txphost'
wp option delete 'tpre'
wp option delete 'txpcat2wpcat'
wp option delete 'txpid2wpid'
wp option delete 'txpposts2wpposts'
wp option delete 'txpcm2wpcm'
wp option delete 'txplinks2wplinks'
wp option delete 'txp_cats'
wp option delete 'txp_links'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rich_editing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rich_editing'"
