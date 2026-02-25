#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ak404_mailto'
wp option delete 'ak404_mail_enabled'
wp option delete 'ak404_rss_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ak404_%'"
wp option delete 'rss_language'

