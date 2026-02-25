#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'annoscno_link_color'
wp option delete 'annoscno_link_hover_color'
wp option delete 'annoscno_enabled'
wp option delete 'annoscno_text'
wp option delete 'annoscno_mode'
wp option delete 'annoscno_speed'
wp option delete 'annoscno_font_size'
wp option delete 'annoscno_font_family'
wp option delete 'annoscno_bg_color'
wp option delete 'annoscno_text_color'

