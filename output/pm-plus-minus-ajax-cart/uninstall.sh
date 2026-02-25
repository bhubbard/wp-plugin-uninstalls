#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pmatc_ajax_cart_replace_mode'
wp option delete 'pmatc_ajax_cart_custom_pages'
wp option delete 'pmatc_ajax_cart_quantity_type'
wp option delete 'pmatc_ajax_cart_plus_button_text'
wp option delete 'pmatc_ajax_cart_minus_button_text'
wp option delete 'pmatc_ajax_cart_button_background_color'
wp option delete 'pmatc_ajax_cart_button_text_color'
wp option delete 'pmatc_ajax_cart_before_button_text'
wp option delete 'pmatc_ajax_cart_after_button_text'
wp option delete 'pmatc_ajax_cart_variable_product_text'
wp option delete 'pmatc_ajax_cart_external_product_text'
wp option delete 'pmatc_ajax_cart_grouped_product_text'
wp option delete 'pmatc_ajax_cart_custom_css'

