#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_wcwl_enabled'
wp option delete 'pbo_mtw_hook_for_link'
wp option delete 'pbo_mtw_hook_for_link_to_wishlist_page'
wp option delete 'pbo_mtw_label'
wp option delete 'pbo_mtw_successfully_moved_message'
wp option delete 'pbo_mtw_view_wishlist_label'

