#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_bookmark_me'
wp option delete 'widget_contexts'
wp option delete 'sidebars_widgets'

