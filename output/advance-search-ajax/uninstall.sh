#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'title'
wp option delete 'e_date'
wp option delete 'e_keyword'
wp option delete 'e_author'
wp option delete 'e_tag'
wp option delete 'e_cats'
wp option delete 'loadin_img'
wp option delete 's_posts_per_page'

