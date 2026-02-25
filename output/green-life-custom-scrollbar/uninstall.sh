#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gl_scrollbar_show'
wp option delete 'gl_scrollbar_width'
wp option delete 'gl_scrollbar_bgcolor'
wp option delete 'gl_scrollbar_cursor_color'
wp option delete 'gl_scrollbar_cursor_radius'
wp option delete 'gl_scrollbar_speed'
wp option delete 'gl_scrollbar_opacity'
wp option delete 'gl_scrollbar_autohide'
wp option delete 'gl_scrollbar_autohide_delay'
wp option delete 'gl_scrollbar_show_admin'
wp option delete 'gl_scrollbar_force_default'

