#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_chameleon'
wp option delete 'ap_case'
wp option delete 'ap_layout'
wp option delete 'ap_dom'
wp option delete 'ap_debug_logger'
wp option delete 'alphabetic_pagination_options'

# Delete Transients
wp transient delete 'ap_taxes_types_query_cache'

