#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcr_options'
wp option delete 'woocommerce_review_rating_verification_required'

