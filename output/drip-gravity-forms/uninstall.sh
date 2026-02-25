#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_drip_version'
wp option delete 'gf_drip_settings'

# Delete Transients
wp transient delete 'gfp_drip_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gfp_drip_dismiss_menu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gfp_drip_dismiss_menu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gfp_drip_dismiss_menu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gfp_drip_dismiss_menu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gfp_drip_field_guide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gfp_drip_field_guide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gfp_drip_field_guide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gfp_drip_field_guide'"
