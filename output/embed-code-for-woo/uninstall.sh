#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wec_archive_code'
wp option delete 'wec_product_page'
wp option delete 'wec_cart_page'
wp option delete 'wec_checkout_page'
wp option delete 'wec_confirmation_page'
wp option delete 'wec_embed_in_head'
wp option delete 'wec_all_pages'

