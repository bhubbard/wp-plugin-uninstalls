#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tui_aifp_div'
wp option delete 'tui_aifp_message'
wp option delete 'tui_aifp_placemessagebefore'
wp option delete 'tui_aifp_hasphp'
wp option delete 'tui_aifp_addcss'

