#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pretix_widget_cache_time_max'
wp option delete 'pretix_widget_shop_url'
wp option delete 'pretix_widget_version'
wp option delete 'pretix_widget_list_type'
wp option delete 'pretix_widget_disable_voucher'
wp option delete 'pretix_widget_disable_filter'
wp option delete 'pretix_widget_language'
wp option delete 'pretix_widget_button_text'
wp option delete 'pretix_widget_custom_css'
wp option delete 'pretix_widget_debug_skip_ssl_check'

# Delete Transients
wp transient delete 'pretix_widget_custom_css'

