#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'niz_woo_ajload'

# Delete Transients
wp transient delete 'niz_ajax_loadmore_products_custom_query'

