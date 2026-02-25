#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wecantrack_version'
wp option delete 'wecantrack_api_key'
wp option delete 'wecantrack_custom_redirect_html'
wp option delete 'wecantrack_redirect_options'
wp option delete 'wecantrack_website_options'
wp option delete 'wecantrack_referrer_cookie_status'
wp option delete 'wecantrack_storage'
wp option delete 'wecantrack_plugin_status'
wp option delete 'wecantrack_session_enabler'
wp option delete 'wecantrack_snippet'
wp option delete 'wecantrack_redirect_status'
wp option delete 'wecantrack_fetch_expiration'
wp option delete 'wecantrack_snippet_version'
wp option delete 'wecantrack_domain_patterns'

# Delete Transients
wp transient delete 'wecantrack_lock_cache_refresh'

