#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_section_enabled'"
wp option delete 'alg_wc_cart_messages_add_to_cart_section_enabled'
wp option delete 'alg_wc_cart_messages_add_to_cart_custom_enabled'
wp option delete 'alg_wc_cart_messages_add_to_cart_by_url_enabled'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_messages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_total_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_types_on_empty'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_message_visibilities'"
wp option delete 'alg_wc_cart_messages_add_to_cart_custom_text'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'alg_wc_cart_messages_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

