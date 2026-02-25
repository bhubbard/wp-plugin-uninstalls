#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'te-fpb-ok'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'te-fpb-ok'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'te-fpb-ok'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'te-fpb-ok'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'teSlide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'teSlide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'teSlide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'teSlide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'teSB'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'teSB'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'teSB'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'teSB'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fpb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fpb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fpb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fpb'"
