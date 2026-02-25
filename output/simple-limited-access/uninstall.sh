#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_limited_access_bg'
wp option delete 'simple_limited_access_text'
wp option delete 'simple_limited_access_pages'
wp option delete 'simple_limited_access_post_type'
wp option delete 'simple_limited_access_list'
wp option delete 'simple_limited_access_cookie'

