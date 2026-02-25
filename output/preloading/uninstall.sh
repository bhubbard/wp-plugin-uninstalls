#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pre_loading_config'
wp option delete 'pre_loading_options'
wp option delete 'pre_loading_options_preview'

