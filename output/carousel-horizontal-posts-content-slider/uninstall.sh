#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tchpcs_displayimage'
wp option delete 'tchpcs_word_limit'
wp option delete 'tchpcs_query_posts_showposts'
wp option delete 'tchpcs_query_posts_orderby'
wp option delete 'tchpcs_query_posts_order'
wp option delete 'tchpcs_query_posts_category'

