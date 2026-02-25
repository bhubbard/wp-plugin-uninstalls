#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wf_static_page_rules'
wp option delete '_wf_dynamic_page_rules'
wp option delete 'wf_pages_cache_duration'
wp option delete '_wf_api_token_version'
wp option delete '_wf_api_token'

# Delete Transients
wp transient delete '_wf_site_data'
wp transient delete 'wf_site_cached'

