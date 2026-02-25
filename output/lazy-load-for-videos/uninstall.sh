#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lly_opt_support_for_widgets'
wp option delete 'll_opt_support_for_tablepress'
wp option delete 'lly_opt'
wp option delete 'llv_opt'
wp option delete 'll_opt_load_scripts'
wp option delete 'll_opt_button_style'
wp option delete 'll_opt_thumbnail_size'
wp option delete 'll_opt_thumbnail_quality'
wp option delete 'll_opt_customcss'
wp option delete 'll_attribute'
wp option delete 'lly_opt_title'
wp option delete 'lly_opt_overlay_text'
wp option delete 'lly_opt_player_preroll'
wp option delete 'lly_opt_player_postroll'
wp option delete 'lly_opt_player_colour_progress'
wp option delete 'lly_opt_player_loadpolicy'
wp option delete 'lly_opt_player_controls'
wp option delete 'lly_opt_cookies'
wp option delete 'llv_opt_title'
wp option delete 'llv_opt_overlay_text'
wp option delete 'llv_opt_player_colour'
wp option delete 'llv_opt_cookies'
wp option delete 'lazyloadvideos_deferred_admin_notices'
wp option delete 'llv_opt_player_preroll'
wp option delete 'llv_opt_player_postroll'
wp option delete 'lly_opt_thumbnail_quality'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyload_thumbnail_quality'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyload_thumbnail_quality'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyload_thumbnail_quality'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyload_thumbnail_quality'"
