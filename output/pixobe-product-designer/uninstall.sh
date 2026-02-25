#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pixobe_product_designer_nonce'
wp option delete 'pixobe_product_designer_site_id'
wp option delete 'pixobe_product_designer_plan'
wp option delete 'pixobe_product_designer_message'
wp option delete 'pixobe_product_designer_expiry'

