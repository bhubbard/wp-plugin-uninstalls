#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplr_hide_posttypes'
wp option delete 'wplr_posttype'
wp option delete 'wplr_posttype_status'
wp option delete 'wplr_posttype_hierarchical'
wp option delete 'wplr_posttype_reuse'
wp option delete 'wplr_posttype_mode'
wp option delete 'wplr_posttype_meta'
wp option delete 'wplr_taxonomy'
wp option delete 'wplr_taxonomy_reuse'
wp option delete 'wplr_taxonomy_tags'
wp option delete 'wplr_taxonomy_tags_reuse'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
