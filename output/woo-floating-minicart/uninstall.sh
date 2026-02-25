#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Woo_floating_minicart_position'
wp option delete 'Woo_floating_minicart_show_shop_page_link'
wp option delete 'Woo_floating_minicart_show_best_selling_products'
wp option delete 'Woo_floating_minicart_hide'
wp option delete 'Woo_floating_minicart_offset'
wp option delete 'Woo_floating_minicart_primary_color'
wp option delete 'Woo_floating_minicart_secondary_color'
wp option delete 'Woo_floating_minicart_button_color'

