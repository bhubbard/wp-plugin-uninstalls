#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_post_type'
wp option delete 'auto_search_in'
wp option delete 'auto_post_type_front'
wp option delete 'auto_search_in_front'
wp option delete 'auto_post_thumb_front'
wp option delete 'auto_post_excerpt_front'
wp option delete 'auto_post_date_front'
wp option delete 'auto_post_limit_front'

