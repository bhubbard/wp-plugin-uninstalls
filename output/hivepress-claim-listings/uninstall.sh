#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_listing_claim_categories'
wp option delete 'hp_product_listing_claim'
wp option delete 'hp_listing_claim_enable_moderation'

