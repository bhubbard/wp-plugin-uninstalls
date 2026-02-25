#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twg_amp_related_posts_count'
wp option delete 'twg_amp_related_posts_orderby'
wp option delete 'twg_amp_related_posts_show_thumbnail'

