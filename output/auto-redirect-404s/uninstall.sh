#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'r404c_enabled'
wp option delete 'r404c_redirect_url'
wp option delete 'r404c_redirect_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'r404c_%'"

