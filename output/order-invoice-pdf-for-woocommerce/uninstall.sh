#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpe_invoice_pdf_settings'
wp option delete 'woocommerce_currency'

