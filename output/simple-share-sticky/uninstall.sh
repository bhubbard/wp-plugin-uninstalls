#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_share_sticky_fb'
wp option delete 'simple_share_sticky_tw'
wp option delete 'simple_share_sticky_g'
wp option delete 'simple_share_sticky_li'
wp option delete 'simple_share_sticky_pt'
wp option delete 'simple_share_sticky_su'
wp option delete 'simple_share_sticky_posts'
wp option delete 'simple_share_sticky_pages'
wp option delete 'simple_share_sticky_custom'
wp option delete 'simple_share_sticky_archive'
wp option delete 'simple_share_sticky_home'

