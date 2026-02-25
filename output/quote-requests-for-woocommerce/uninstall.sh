#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rewrite_rules'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

