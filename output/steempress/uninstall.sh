#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steempress_sp_permlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steempress_sp_permlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steempress_sp_permlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steempress_sp_permlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steempress_sp_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steempress_sp_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steempress_sp_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steempress_sp_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Steempress_sp_steem_publish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Steempress_sp_steem_publish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Steempress_sp_steem_publish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Steempress_sp_steem_publish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Steempress_sp_steem_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Steempress_sp_steem_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Steempress_sp_steem_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Steempress_sp_steem_update'"
