#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_post_edit_rows'
wp option delete 'woo-popup_options'
wp option delete 'woocommerce_shop_page_id'

