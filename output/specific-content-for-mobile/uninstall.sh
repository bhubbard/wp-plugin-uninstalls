#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_on_front_mobile'
wp option delete 'page_for_posts_mobile'
wp option delete 'eos_scfm_main'

# Delete Transients
wp transient delete 'scfm_debug'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eos_scfm_mobile_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eos_scfm_desktop_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eos_scfm_desktop_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eos_scfm_desktop_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eos_scfm_desktop_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scfm_offer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scfm_offer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scfm_offer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scfm_offer'"
