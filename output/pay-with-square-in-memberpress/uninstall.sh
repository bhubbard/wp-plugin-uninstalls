#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mepr_free_square_mode'
wp option delete 'mepr_free_square_access_token_sandbox'
wp option delete 'mepr_free_square_access_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'square_refund_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mepr_free_square_locations%'"
wp option delete 'mepr_free_square_refresh_token_sandbox'
wp option delete 'mepr_free_square_response_body_sandbox'
wp option delete 'mepr_free_square_refresh_token'
wp option delete 'mepr_free_square_response_body'
wp option delete 'mepr_options'
wp option delete 'mepr-square-locationId'
wp option delete 'mepr_free_square_app_id'
wp option delete 'mepr_free_square_locations_sandbox'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mepr_integrations_%'"
wp option delete 'mepr_free_square_locations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mepr_product_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mepr_product_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mepr_product_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mepr_product_price'"
