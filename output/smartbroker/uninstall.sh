#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sb_plugin_options'
wp option delete 'sb_sitemap_last_refresh'
wp option delete 'rewrite_rules'
wp option delete 'sb_widget_size_low'
wp option delete 'sb_widget_size_high'
wp option delete 'sb_widget_price_low'
wp option delete 'sb_widget_price_high'

# Delete Transients
wp transient delete 'sb_about_page_activated'

