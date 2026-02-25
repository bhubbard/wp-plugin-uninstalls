#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_footer_text_color'
wp option delete 'zerov99_shipping_providers'

