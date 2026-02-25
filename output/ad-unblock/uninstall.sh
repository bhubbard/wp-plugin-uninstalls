#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ad_unblock_verification_code'
wp option delete 'ad_unblock_custom_api_endpoint'
wp option delete 'ad_unblock_page_rules'

# Delete Transients
wp transient delete 'ad_unblock_script_sources'

