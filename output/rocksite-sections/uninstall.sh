#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rocksite_blocks_library_activation_redirect'
wp option delete 'rocksite_kit_css'
wp option delete 'kadence_blocks_redirect_on_activation'

