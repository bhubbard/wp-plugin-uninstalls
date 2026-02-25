#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppusunarc_prefix'
wp option delete 'ppusunarc_suffix'
wp option delete 'ppusunarc_add_row_css'
wp option delete 'ppusunarc_custom_unit'
wp option delete 'ppusunarc_cart_page'
wp option delete 'woocommerce_weight_unit'

