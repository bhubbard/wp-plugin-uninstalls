#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbmcc_page_types'
wp option delete 'fbmcc_pageID'
wp option delete 'fbmcc_locale'
wp option delete 'fbmcc_install_ts'
wp option delete 'fbmcc_last_alert_check_ts'
wp option delete 'fbmcc_cached_alert_check_response'
wp option delete 'fbmcc_notice'
wp option delete 'fbmcc_generatedCode'
wp option delete 'fbmcc_enabled'

