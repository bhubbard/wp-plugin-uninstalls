#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pkl_wpz_rest_api_auth_enable'
wp option delete 'pkl_wpz_rest_api_auth_allow_root_endpoint'
wp option delete 'pkl_wpz_rest_api_auth_allow_pages'
wp option delete 'pkl_wpz_rest_api_auth_allow_posts'

