#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socproofgen_position'
wp option delete 'socproofgen_duration'
wp option delete 'socproofgen_animation'
wp option delete 'socproofgen_names'
wp option delete 'socproofgen_products'
wp option delete 'socproofgen_bg_color'
wp option delete 'socproofgen_image_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socproofgen_show_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socproofgen_show_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socproofgen_show_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socproofgen_show_popup'"
