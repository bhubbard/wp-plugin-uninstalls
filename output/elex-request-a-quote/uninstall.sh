#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp option delete 'request_a_quote_form_setting'
wp option delete 'request_a_quote_quotelist_settings'
wp option delete 'woocommerce_currency_pos'
wp option delete 'elex_variation_attributes'
wp option delete 'elex_composite_data'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'save_hide_cart_new_fields'
wp option delete 'request_a_quote_general_settings'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'request_a_quote_template_settings'

