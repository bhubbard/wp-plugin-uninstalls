#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%label_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%suggested_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%minimum_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%maximum_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%button_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%button_text_single'"
wp option delete 'woocommerce_cpw_label_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_switching_cpw_price'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_switching'"
wp option delete 'woocommerce_cpw_button_text_single'
wp option delete 'woocommerce_cpw_button_text'
wp option delete 'woocommerce_cpw_minimum_text'
wp option delete 'woocommerce_cpw_maximum_text'
wp option delete 'woocommerce_cpw_suggested_text'
wp option delete 'woocommerce_tax_round_at_subtotal'

