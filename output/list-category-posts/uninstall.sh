#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'numberposts'
wp option delete 'lcp_pagination'
wp option delete 'lcp_orderby'
wp option delete 'lcp_order'

