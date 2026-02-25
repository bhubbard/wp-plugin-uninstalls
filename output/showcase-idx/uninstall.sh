#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'showcaseidx_api_v2_host'
wp option delete 'showcaseidx_cdn_host'
wp option delete 'showcaseidx_api_key'
wp option delete 'showcaseidx_template'
wp option delete 'showcaseidx_setup_step'
wp option delete 'showcaseidx_url_namespace'
wp option delete 'showcaseidx_fake'
wp option delete 'showcaseidx_product_version'
wp option delete 'showcaseidx_cache_version'
wp option delete 'showcaseidx_search_page'
wp option delete 'showcaseidx_deprovision_install_id'
wp option delete 'showcaseidx_website_uuid'
wp option delete 'showcaseidx_install_id'
wp option delete 'showcaseidx_website_name'

# Clear Cron Jobs
wp cron event delete 'showcaseidx_cachebust'
wp cron event delete 'showcaseidx_activation'

