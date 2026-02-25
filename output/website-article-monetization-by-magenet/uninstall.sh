#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abp_author_id'
wp option delete 'abp_auth_key'
wp option delete 'abp_cache_time'
wp option delete 'abp_categories'
wp option delete 'abp_cache_time_const'
wp option delete 'abp_magenet_api_url'
wp option delete 'abp_cp_host'

