#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tui_aifa_div'
wp option delete 'tui_aifa_message'
wp option delete 'tui_aifa_placemessagebefore'
wp option delete 'tui_aifa_hasphp'
wp option delete 'tui_aifa_addcss'

