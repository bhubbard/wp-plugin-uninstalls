#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmwoo_enable_gift_message'
wp option delete 'gmwoo_character_limit'
wp option delete 'gmwoo_field_label'
wp option delete 'gmwoo_field_placeholder'
wp option delete 'gmwoo_gift_message_mode'
wp option delete 'gmwoo_specific_products'
wp option delete 'gmwoo_specific_categories'
wp option delete 'woocommerce_cart_redirect_after_add'

