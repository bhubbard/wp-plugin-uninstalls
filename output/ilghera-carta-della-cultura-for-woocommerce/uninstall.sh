#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccdc-sandbox'
wp option delete 'wccdc-cert-activation'
wp option delete 'wccdc-password'
wp option delete 'wccdc-categories'
wp option delete 'wccdc-image'
wp option delete 'wccdc-premium-key'
wp option delete 'wccdc-coupon'
wp option delete 'wccdc-items-check'
wp option delete 'wccdc-orders-on-hold'
wp option delete 'wccdc-exclude-shipping'
wp option delete 'wccdc-email-order-received'
wp option delete 'wccdc-email-subject'
wp option delete 'wccdc-email-heading'
wp option delete 'wccdc-email-order-failed'

