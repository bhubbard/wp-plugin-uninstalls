#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'st_onoffswitch'
wp option delete 'st_sb_color'
wp option delete 'st_sb_width'
wp option delete 'st_sb_border_size'
wp option delete 'st_sb_border_style'
wp option delete 'st_sb_border_color'
wp option delete 'st_sb_border_radius'
wp option delete 'st_rail_color_opacity'
wp option delete 'st_onoffswitch_autohide'
wp option delete 'st_sb_speed'
wp option delete 'st_rail_align_switch'
wp option delete 'st_sb_active_opacity'
wp option delete 'st_sb_mouse_step'
wp option delete 'st_smothscroll_switch'
wp option delete 'st_bouncescroll_switch'
wp option delete 'st_mouse_switch'

