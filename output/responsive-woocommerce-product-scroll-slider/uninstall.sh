#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooproductscroller_prodcat'
wp option delete 'wooproductscroller_no_of_products'
wp option delete 'wooproductscroller_orderBy'
wp option delete 'wooproductscroller_order'
wp option delete 'wooproductscroller_title'

