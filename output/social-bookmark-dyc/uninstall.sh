#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_social_bookmark'
wp option delete 'widget_contexts'
wp option delete 'sidebars_widgets'

