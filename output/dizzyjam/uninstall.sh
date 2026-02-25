#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dizzyjam_shop_unique_id'
wp option delete 'dizzyjam_iso_country_code'
wp option delete 'dizzyjam_api_auth_id'
wp option delete 'dizzyjam_api_key'
wp option delete 'dizzyjam_products_per_page'
wp option delete 'dizzyjam_cache_time'
wp option delete 'rewrite_rules'

