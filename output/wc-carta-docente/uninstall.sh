#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wccd-sandbox'
wp option delete 'wccd-cert-activation'
wp option delete 'wccd-password'
wp option delete 'wccd-categories'
wp option delete 'wccd-image'
wp option delete 'wccd-coupon'
wp option delete 'wccd-orders-on-hold'
wp option delete 'wccd-exclude-shipping'
wp option delete 'wccd-items-check'
wp option delete 'wccd-email-order-received'
wp option delete 'wccd-email-order-failed'

