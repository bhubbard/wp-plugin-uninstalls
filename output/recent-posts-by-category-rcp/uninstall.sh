#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpcbycat_posts_per_page'
wp option delete 'rpcbycat_category'
wp option delete 'rpcbycat_order_by'
wp option delete 'rpcbycat_layout'
wp option delete 'rpcbycat_show_image'
wp option delete 'rpcbycat_rtl'
wp option delete 'rpcbycat_show_excerpt'

