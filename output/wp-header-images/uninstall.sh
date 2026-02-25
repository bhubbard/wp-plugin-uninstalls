#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_header_images'
wp option delete 'wphi_gluri_slider'
wp option delete 'wphi_header_videos'
wp option delete 'wphi_sidebar_settings'
wp option delete 'wphi_template_custom'
wp option delete 'wphi_styling'
wp option delete 'wphi_dom'
wp option delete 'wphi_template'
wp option delete 'wphi_post_type_selection'
wp option delete 'wphi_on_off_options'

