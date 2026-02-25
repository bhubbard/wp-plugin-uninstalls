#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activated_glg_plugin'
wp option delete 'glg_gallery_active'
wp option delete 'glg_gallery_autoplay'
wp option delete 'ecf_slide_every'
wp option delete 'glg_gallery_thumbnails'
wp option delete 'glg_gallery_overlay_color'
wp option delete 'glg_gallery_show_captions'
wp option delete 'glg_gallery_fancy_caption'
wp option delete 'glg_trial_notify'

# Delete Transients
wp transient delete 'glg_premium_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'glg_meta_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'glg_meta_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'glg_meta_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'glg_meta_options'"
