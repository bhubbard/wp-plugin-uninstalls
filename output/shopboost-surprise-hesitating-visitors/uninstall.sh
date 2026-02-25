#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopboost_merchant_id'
wp option delete 'shopboost_enable'
wp option delete 'shopboost_enable_for_admin'
wp option delete 'shopboost_first_time'

