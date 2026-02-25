#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rb_enable_bar'
wp option delete 'rb_background_color'
wp option delete 'rb_foreground_color'
wp option delete 'rb_background_opacity'
wp option delete 'rb_bar_shadow'
wp option delete 'rb_bar_rounded'
wp option delete 'rb_bar_placement'
wp option delete 'rb_bar_height'
wp option delete 'rb_show_single_post'
wp option delete 'rb_show_home_page'
wp option delete 'rb_show_single_page'
wp option delete 'rb_show_archive'

