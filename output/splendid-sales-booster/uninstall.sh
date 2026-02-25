#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcssb_section_location'
wp option delete 'wcssb_db_version'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'wcssb_section_default_title'
wp option delete 'wcssb_show_images'

