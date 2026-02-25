#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'desktop_breakopint'
wp option delete 'tablet_breakopint_start'
wp option delete 'tablet_breakopint_end'
wp option delete 'mobile_breakopint_end'

