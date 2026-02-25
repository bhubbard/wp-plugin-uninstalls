#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relive_classic_editor_enable'
wp option delete 'relive_classic_widgets_enable'
wp option delete 'relive_classic_frontend_gutenberg_stylesheet'

