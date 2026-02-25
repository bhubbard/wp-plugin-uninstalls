#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myaliceai_plugin_status'
wp option delete 'myaliceai_review_notice_time'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'myaliceai_is_needed_migration'
wp option delete 'myaliceai_wc_auth'
wp option delete 'myaliceai_api_data'
wp option delete 'myaliceai_settings'
wp option delete 'myaliceai_customization_notice_dismiss'

# Delete Transients
wp transient delete 'myaliceai_wc_api_status'

