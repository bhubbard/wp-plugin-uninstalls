#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lyode_typing_default_loop'
wp option delete 'lyode_typing_default_style'
wp option delete 'lyode_typing_default_cursor'
wp option delete 'lyode_typing_enable_statistics'
wp option delete 'lyode_typing_statistics'

