#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Product_stock_option_css'
wp option delete 'Product_stock_alert_db_version'
wp option delete 'Product_stock_option_sender'
wp option delete 'Product_stock_option_from'
wp option delete 'Product_stock_option_subject'
wp option delete 'Product_stock_option_message'
wp option delete 'Product_stock_option_error'
wp option delete 'Product_stock_option_success'
wp option delete 'Product_stock_option_placeholder'
wp option delete 'Product_stock_option_submit'
wp option delete 'Product_stock_option_shortcode'

