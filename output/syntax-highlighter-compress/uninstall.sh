#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shc_opt'
wp option delete 'shc_theme'
wp option delete 'shc_autolinks'
wp option delete 'shc_collapse'
wp option delete 'shc_gutter'
wp option delete 'shc_smarttabs'
wp option delete 'shc_tabsize'
wp option delete 'shc_toolbar'

