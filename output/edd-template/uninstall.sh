#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd-template-status'
wp option delete 'edd-template-style'
wp option delete 'edd-template-checkout-page'
wp option delete 'edd-template-receipt-page'
wp option delete 'edd-template-confirmation-page'
wp option delete 'edd-template-purchase-confirmation-page'
wp option delete 'edd-template-download-history-page'
wp option delete 'edd-template-purchase-history-page'

