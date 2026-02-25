#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brocardi_cate'
wp option delete 'bro_option_name'
wp option delete 'brocardi_cron'
wp option delete 'brocardi_cron_cate'
wp option delete '301_redirects_brocardi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brocardi_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brocardi_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brocardi_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brocardi_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brocardi_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brocardi_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brocardi_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brocardi_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brocardi_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brocardi_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brocardi_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brocardi_id'"
