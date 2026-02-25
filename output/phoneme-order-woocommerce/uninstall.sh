#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phoneme_order_woocommerce_title_1'
wp option delete 'phoneme_order_woocommerce_title_2'
wp option delete 'phoneme_order_woocommerce_hint_text'
wp option delete 'phoneme_order_woocommerce_outofstock'

