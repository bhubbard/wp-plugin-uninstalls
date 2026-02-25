#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ta_version'
wp option delete 'widget_top_authors'
wp option delete 'widget_top-authors'
wp option delete 'sidebars_widgets'

