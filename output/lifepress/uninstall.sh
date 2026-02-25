#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lifepress_dashboard'
wp option delete 'lifepress_create_pages'
wp option delete 'lp_type_meta'
wp option delete 'lifepress_metrics'
wp option delete 'lp_settings'
wp option delete 'life_create_pages'

# Delete Transients
wp transient delete '_lp_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lifepress_ls_sd'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lifepress_ls_sd'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lifepress_ls_sd'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lifepress_ls_sd'"
