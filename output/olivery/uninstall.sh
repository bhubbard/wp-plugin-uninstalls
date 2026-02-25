#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'olivery_login'
wp option delete 'olivery_password'
wp option delete 'olivery_db'
wp option delete 'olivery_company_sequence'
wp option delete 'olivery_follower_address'
wp option delete 'olivery_follower_area'
wp option delete 'olivery_follower_store_name'
wp option delete 'olivery_follower_mobile_number'
wp option delete 'olivery_follower_second_mobile_number'
wp option delete 'olivery_delivery_coms'
wp option delete 'olivery_new_orders_statuses'

