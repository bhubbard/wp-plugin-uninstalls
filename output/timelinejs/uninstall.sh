#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'display_only_these_post_categories_as_a_timeline'
wp option delete 'display_post_categories_as_inline_timeline'
wp option delete 'display_post_categories_as_a_timeline'
wp option delete 'only_display_other_timeline_hotswap'

