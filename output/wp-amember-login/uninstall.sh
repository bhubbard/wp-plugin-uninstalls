#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_amember_login_api_url'
wp option delete 'wp_amember_login_api_key'
wp option delete 'wp_amember_login'
wp option delete 'my_option_name'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_amember_login_%'"

