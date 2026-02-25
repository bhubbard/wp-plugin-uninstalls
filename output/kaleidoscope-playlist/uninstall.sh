#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kaleidoscope_api_key'
wp option delete 'kaleidoscope_playlist_width'
wp option delete 'kaleidoscope_playlist_height'
wp option delete 'kaleidoscope_playlist_background_color'
wp option delete 'kaleidoscope_playlist_background_transparency'
wp option delete 'kaleidoscope_playlist_border'
wp option delete 'kaleidoscope_playlist_border_color'
wp option delete 'kaleidoscope_playlist_autoplay'
wp option delete 'kaleidoscope_playlist_interval'
wp option delete 'kaleidoscope_playlist_animation'
wp option delete 'kaleidoscope_playlist_caption'
wp option delete 'kaleidoscope_playlist_image_fit'
wp option delete 'kaleidoscope_playlist_navigation'

