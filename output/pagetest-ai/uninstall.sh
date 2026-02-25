#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagetest_auth_token'
wp option delete 'pagetest_cached_script'
wp option delete 'pagetest_selected_posts'
wp option delete 'pagetest_selected_pages'

