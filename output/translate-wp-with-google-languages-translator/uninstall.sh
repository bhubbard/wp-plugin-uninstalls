#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glt-site-language'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'glt-%'"
wp option delete 'glt-multi-language'
wp option delete 'glt-languages'
wp option delete 'glt-languages-list'
wp option delete 'glt-display-mode'
wp option delete 'glt-inline-display-mode'
wp option delete 'glt-tabbed-display-mode'
wp option delete 'glt-flags'
wp option delete 'glt-flags-list'
wp option delete 'glt-flags-order'
wp option delete 'glt-toolbar'
wp option delete 'glt-align'
wp option delete 'glt-active'
wp option delete 'glt-analytics'
wp option delete 'glt-analytics-id'
wp option delete 'glt-css'

