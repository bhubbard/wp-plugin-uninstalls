#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stock_message_for_woocommerce_button_settings'
wp option delete 'stock_message_for_woocommerce_form_settings'
wp option delete 'stock_messages_table_created'
wp option delete 'stock_message_for_woocommerce_email_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_stock_message_verify_%' OR option_name LIKE '_site_transient_stock_message_verify_%'"
wp transient delete 'stock_message_test_email_last_sent'

