#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stssm_redirect_to_settings'
wp option delete 'stssm_sticky_placement'
wp option delete 'stssm_pages_placement'
wp option delete 'stssm_posts_placement'
wp option delete 'stssm_icons_content'
wp option delete 'stssm_icons_sticky'
wp option delete 'stssm_icons_sticky_all'
wp option delete 'stssm_content_icons_design'
wp option delete 'stssm_sticky_icons_design'

