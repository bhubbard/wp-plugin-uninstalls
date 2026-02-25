#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_website_redirect_status'
wp option delete 'simple_website_redirect_to_root'
wp option delete 'simple_website_redirect_type'
wp option delete 'simple_website_redirect_url'
wp option delete 'simple_website_redirect_exclude_paths'
wp option delete 'simple_website_redirect_exclude_query_params'

