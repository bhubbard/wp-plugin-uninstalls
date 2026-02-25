#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webstats_matomo_version'
wp option delete 'webstats_matomo_enable_matomo'
wp option delete 'webstats_matomo_enable_proxy'
wp option delete 'webstats_matomo_enable_cookie'
wp option delete 'webstats_matomo_site_id'
wp option delete 'webstats_matomo_matomo_url'
wp option delete 'webstats_matomo_auth_token'

