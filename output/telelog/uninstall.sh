#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'telelog_api_key'
wp option delete 'telelog_chat_id'
wp option delete 'telelog_on_post_update'
wp option delete 'telelog_on_post_publish'
wp option delete 'telelog_on_post_comment'
wp option delete 'telelog_on_login_fail'
wp option delete 'telelog_on_register_user'
wp option delete 'telelog_on_theme_switch'
wp option delete 'telelog_on_plugin_activate'
wp option delete 'telelog_on_plugin_deactivate'
wp option delete 'telelog_on_woocommerce_order_new'

