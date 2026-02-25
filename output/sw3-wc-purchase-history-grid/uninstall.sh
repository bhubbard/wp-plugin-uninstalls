#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'num_of_columns'
wp option delete 'num_of_products'
wp option delete 'cat_operator'
wp option delete 'phg_cats'
wp option delete 'phg_order_by'
wp option delete 'phg_order'
wp option delete 'product_visibility'
wp option delete 'phg_tags'
wp option delete 'tag_operator'

