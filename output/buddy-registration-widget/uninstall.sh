#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'buddy_member_cover'
wp option delete 'buddy_group_cover'
wp option delete 'buddy_hide_activity_tab'
wp option delete 'buddy_profile_image'
wp option delete 'buddy_custom_widget_template'
wp option delete 'buddy_custom_shortcode_template'

