#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'push7_appno'
wp option delete 'push7_sdk_enabled'
wp option delete 'push7_apikey'
wp option delete 'push7_blog_title'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'push7_push_pt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'push7_push_ctg_%'"
wp option delete 'push7_rpid_dict'
wp option delete 'push7_sslverify_disabled'

