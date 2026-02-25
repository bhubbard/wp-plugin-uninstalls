#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'move_do_activation_redirect'
wp option delete 'htmove_widget_list'
wp option delete 'htmove_userdata_list'
wp option delete 'htmove_module_list'
wp option delete 'move_installed'
wp option delete 'MOVE_ADDONS_VERSION'
wp option delete 'yith_wcwl_wishlist_page_id'
wp option delete 'yith_wcwl_add_to_wishlist_text'
wp option delete 'yith_wcwl_browse_wishlist_text'
wp option delete 'yith_wcwl_product_added_text'
wp option delete 'job_manager_enable_types'

