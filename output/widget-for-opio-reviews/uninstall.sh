#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opio_active'
wp option delete 'widget_custom_html'
wp option delete 'widget_block'
wp option delete 'opio_debug_mode'

