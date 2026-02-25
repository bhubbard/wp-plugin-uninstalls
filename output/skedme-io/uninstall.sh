#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'skedmeKey'
wp option delete 'skedmeSide'
wp option delete 'skedmeTheme'
wp option delete 'skedmeMargin'
wp option delete 'skedmeSize'
wp option delete 'skedmeShape'

