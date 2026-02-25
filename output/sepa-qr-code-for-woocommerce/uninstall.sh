#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'muxp_payment_request_text'
wp option delete 'muxp_qr_max_width'
wp option delete 'muxp_store_qr_code_as_image'
wp option delete 'muxp_payment_request_email_text'
wp option delete 'woocommerce_bacs_accounts'

