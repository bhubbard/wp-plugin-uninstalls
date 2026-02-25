#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hide_affiliate_box'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_show_affiliate_box_after'"
wp option delete 'poptin_id'
wp option delete 'poptin_marketplace_token'
wp option delete 'poptin_user_id'
wp option delete 'poptin_marketplace_email_id'
wp option delete 'poptin_plugin_redirection'

