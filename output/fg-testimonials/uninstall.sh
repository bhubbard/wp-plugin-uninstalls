#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fgts_numofslide_desktop'
wp option delete 'fgts_numofslide_tablet'
wp option delete 'fgts_numofslide_mobile'
wp option delete 'fgts_controls_nav'
wp option delete 'fgts_control_dots'
wp option delete 'fgts_loop_set'
wp option delete 'fgts_autoplay'
wp option delete 'fgts_autoplayhover'
wp option delete 'fgts_numof_smartspeed'
wp option delete 'fgts_numofposts'
wp option delete 'fgts_img_chkbx'
wp option delete 'fgts_designation_chkbx'
wp option delete 'fgts_viewbtn'
wp option delete 'fgts_viewbtn_link'
wp option delete 'fgts_shortcode_field'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fgts_testimonial_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fgts_testimonial_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fgts_testimonial_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fgts_testimonial_fields'"
