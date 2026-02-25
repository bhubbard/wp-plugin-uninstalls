#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miga_smooth_scrolling_exclude_page'
wp option delete 'miga_smooth_scrolling_disable_wheel'
wp option delete 'miga_smooth_scrolling_anchor_offset'
wp option delete 'miga_smooth_scrolling_lerp'
wp option delete 'miga_smooth_scrolling_duration'
wp option delete 'miga_smooth_scrolling_anchor_links'
wp option delete 'miga_smooth_scrolling_gsap'

