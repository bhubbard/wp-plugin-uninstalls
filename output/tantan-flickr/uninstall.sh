#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'silas_flickr_token'
wp option delete 'silas_flickr_hidealbums'
wp option delete 'silas_flickr_hidegroups'
wp option delete 'silas_flickr_grouporder'
wp option delete 'silas_flickr_albumorder'
wp option delete 'silas_flickr_baseurl'
wp option delete 'silas_flickr_linkoptions'
wp option delete 'silas_flickr_hideprivate'
wp option delete 'silas_flickr_apikey'
wp option delete 'silas_flickr_sharedsecret'
wp option delete 'silas_flickr_baseurl_pre'
wp option delete 'silas_flickr_showbadge'
wp option delete 'silas_flickr_user'
wp option delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'tantan_flickr_clear_cache_event'

