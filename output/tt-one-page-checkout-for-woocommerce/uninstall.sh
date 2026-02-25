#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'one_page_checkout_enabled'
wp option delete 'one_page_checkout_position'
wp option delete 'one_page_checkout_addtocart_text'
wp option delete 'one_page_checkout_placeorder_text'
wp option delete 'one_page_checkout_ordernotes_text'

