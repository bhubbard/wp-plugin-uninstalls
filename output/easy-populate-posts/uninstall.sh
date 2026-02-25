#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spp_settings'
wp option delete 'spp_settings_groups'

# Delete Transients
wp transient delete 'ssp-post-meta-list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spp_sample'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spp_sample'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spp_sample'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spp_sample'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spp_sample_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spp_sample_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spp_sample_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spp_sample_url'"
