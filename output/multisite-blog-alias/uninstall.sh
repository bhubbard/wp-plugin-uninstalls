#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blog_alias_redirect_with_path'
wp option delete 'blog_alias_redirect_wp_admin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'multisite_blog_alias_sunrise_active'

