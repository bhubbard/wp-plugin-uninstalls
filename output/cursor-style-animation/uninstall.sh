#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csanim_enabled'
wp option delete 'csanim_mobile'
wp option delete 'csanim_cursor_style'
wp option delete 'csanim_custom_cursor'
wp option delete 'csanim_cursor_size'
wp option delete 'csanim_type'
wp option delete 'csanim_trail_length'
wp option delete 'csanim_trail_size'
wp option delete 'csanim_trail_color'
wp option delete 'csanim_speed'

