#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jcwp_quote_option_field_phone_number'
wp option delete 'jcwp_quote_option_field_button_text'
wp option delete 'jcwp_quote_option_field_message_text'
wp option delete 'jcwp_quote_option_field_show_on_product_page'
wp option delete 'jcwp_quote_option_field_show_on_shop_page'
wp option delete 'jcwp_quote_option_field_show_on_categories'

