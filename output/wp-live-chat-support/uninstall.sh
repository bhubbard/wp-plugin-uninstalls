#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplc_activated'
wp option delete 'wplc_callback_nonce'
wp option delete 'wplc_display_options'

