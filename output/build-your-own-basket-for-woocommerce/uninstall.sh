#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'BYOBFW_build_your_own_basket_activation_error'
wp option delete 'BYOBFW_build_your_own_basket_product_id'
wp option delete 'byobfw_db_version'

