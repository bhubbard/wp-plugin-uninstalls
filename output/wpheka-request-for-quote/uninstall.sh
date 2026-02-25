#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpheka_rfq_general_settings'
wp option delete 'wpheka_request_for_quote_page_id'

# Delete Transients
wp transient delete 'wpheka_rfq_installing'

