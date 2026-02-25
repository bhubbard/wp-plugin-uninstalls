#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'checkout_x_shop_id'
wp option delete 'checkout_x_storefront_url'
wp option delete 'checkout_x_api_version'
wp option delete 'checkout_x_app_url'
wp option delete 'checkout_x_api_url'
wp option delete 'checkout_x_website_url'
wp option delete 'checkout_x_event_secret'

