#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twssc_simple_slider_version'
wp option delete 'twssc_slider_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_slides_to_show'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_slides_to_show'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_slides_to_show'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_slides_to_show'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_fade_animation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_fade_animation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_fade_animation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_fade_animation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_show_arrows'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_show_arrows'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_show_arrows'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_show_arrows'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_show_dots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_show_dots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_show_dots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_show_dots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_autoplay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_autoplay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_autoplay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_autoplay'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_pause_on_hover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_pause_on_hover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_pause_on_hover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_pause_on_hover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_twssc_slider_custom_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_twssc_slider_custom_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_twssc_slider_custom_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_twssc_slider_custom_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
