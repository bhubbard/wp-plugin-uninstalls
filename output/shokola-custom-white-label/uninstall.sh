#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_plugin_do_activation_redirect'
wp option delete 'shokola_theme_style'
wp option delete 'shokola_logo_name'
wp option delete 'shokola_background_name'
wp option delete 'shokola_background_repeat'
wp option delete 'shokola_background_position'
wp option delete 'shokola_theme_color'
wp option delete 'shokola_h1_color'
wp option delete 'shokola_theme_dark'
wp option delete 'shokola_background_cover'
wp option delete 'shokola_logo_url'
wp option delete 'shokola_favico_name'

