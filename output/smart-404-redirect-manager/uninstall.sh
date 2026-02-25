#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's4rm_global_redirect_enabled'
wp option delete 's4rm_redirect_url'
wp option delete 's4rm_redirect_type'
wp option delete 's4rm_excluded_urls'
wp option delete 's4rm_loop_threshold'

