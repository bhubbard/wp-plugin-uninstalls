#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcorglrkn_plugin'
wp option delete 'jcorglrkn_theme'
wp option delete 'jcorglrkn_next_post_label'
wp option delete 'jcorglrkn_previous_post_label'
wp option delete 'jcorglrkn_posts_same_category'
wp option delete 'jcorglrkn_exclude_categories'
wp option delete 'jcorglrkn_minimum_screen_width'
wp option delete 'jcorglrkn_linkback'
wp option delete 'jcorglrkn_linkback_text'

