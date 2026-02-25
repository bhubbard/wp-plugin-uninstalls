#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cofwc_whatsapp_number'
wp option delete 'cofwc_button_text'
wp option delete 'cofwc_show_in_product_page'
wp option delete 'cofwc_new_tab'
wp option delete 'cofwc_hide_price'
wp option delete 'cofwc_hide_add_cart_btn'

