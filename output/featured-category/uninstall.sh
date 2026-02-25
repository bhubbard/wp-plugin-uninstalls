#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'featcat_num_posts'
wp option delete 'featcat_title'
wp option delete 'featcat_category_id'
wp option delete 'featcat_style'

