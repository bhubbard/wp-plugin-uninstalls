#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trash_warning_prfw'
wp option delete 'trash_disable_prfw'
wp option delete 'stock_notice_prfw'
wp option delete 'stock_notice_toggle_prfw'
wp option delete 'stock_recommendations_toggle_prfw'
wp option delete 'prfw_notice_dismissed_polyplugins'
wp option delete 'prfw_version_polyplugins'
wp option delete 'product_redirection_for_woocommerce_settings_polyplugins'

