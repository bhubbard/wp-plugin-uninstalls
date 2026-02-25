#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'satcba_animation_active'
wp option delete 'satcba_animation_speed'
wp option delete 'satcba_animation_delay'
wp option delete 'satcba_box_shadow'
wp option delete 'satcba_background_color'
wp option delete 'satcba_text_color'

