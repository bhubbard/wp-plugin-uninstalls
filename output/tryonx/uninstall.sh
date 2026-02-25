#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tryonx_gemini_api_key'
wp option delete 'tryonx_enabled_product_categories'
wp option delete 'active_sitewide_plugins'

