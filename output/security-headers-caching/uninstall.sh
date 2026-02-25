#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shc_enable_headers'
wp option delete 'shc_cache_duration'
wp option delete 'shc_csp_policy'
wp option delete 'shc_enable_hsts'
wp option delete 'shc_enable_xss_protection'
wp option delete 'shc_enable_frame_options'
wp option delete 'shc_enable_content_type'
wp option delete 'shc_referrer_policy'
wp option delete 'shc_permissions_policy'

