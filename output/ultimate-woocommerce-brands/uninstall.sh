#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgb_where_show'
wp option delete 'mgb_show_image'
wp option delete 'mgb_brand_title'
wp option delete 'mgb_detail_position'
wp option delete 'mgb_category_position'

