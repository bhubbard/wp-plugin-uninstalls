#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'obi_related_posts_limit'
wp option delete 'obi_related_posts_title'
wp option delete 'obi_related_posts_list'
wp option delete 'obi_related_posts_heading'

