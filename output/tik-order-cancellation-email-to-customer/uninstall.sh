#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tik_cancelled_order_settings'
wp option delete 'woocommerce_email_footer_text'

