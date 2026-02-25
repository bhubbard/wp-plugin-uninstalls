#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'selector'
wp option delete 'alignment'
wp option delete 'fullWidth'
wp option delete 'placeholder_text'
wp option delete 'custom_css'

