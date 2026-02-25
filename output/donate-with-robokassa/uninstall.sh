#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwr_merchant_pass_two'
wp option delete 'dwr_result_url'
wp option delete 'dwr_result_url_method'
wp option delete 'dwr_merchant_login'
wp option delete 'dwr_merchant_pass_one'
wp option delete 'dwr_default_donation_amount'
wp option delete 'dwr_operation_description'
wp option delete 'dwr_force_delete_tables'

