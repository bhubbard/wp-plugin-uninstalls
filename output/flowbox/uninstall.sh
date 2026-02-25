#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flowbox_checkout_script'
wp option delete 'flowbox_checkout_identifier'
wp option delete 'woocommerce_review_rating_verification_required'

