#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prro_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'prro_order_status_%'"
wp option delete 'prro_reactivate_action'
wp option delete 'prro_cart_notice'
wp option delete 'prro_create_order_note'
wp option delete 'prro_show_repeat_order_on_order_list'
wp option delete 'prro_show_user_reorder_list'
wp option delete 'prro_show_reorder_in_email'

