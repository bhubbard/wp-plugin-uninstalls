#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbase_cache_options'
wp option delete 'wpbase_req_cache_new'
wp option delete 'wpbase_check_site'

