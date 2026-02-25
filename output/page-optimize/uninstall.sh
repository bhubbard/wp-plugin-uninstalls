#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'page_optimize-js'
wp option delete 'page_optimize-load-mode'
wp option delete 'page_optimize-js-exclude'
wp option delete 'page_optimize-css'
wp option delete 'page_optimize-css-exclude'

