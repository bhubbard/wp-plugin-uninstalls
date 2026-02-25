#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptu_disable_acf_post_types'
wp option delete 'ptu_flush_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptu_supports'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptu_supports'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptu_supports'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptu_supports'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ptu_publicly_queryable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ptu_publicly_queryable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ptu_publicly_queryable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ptu_publicly_queryable'"
