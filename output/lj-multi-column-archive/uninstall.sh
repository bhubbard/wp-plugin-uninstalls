#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LJMultiColumnArchive'
wp option delete 'widget-LJMultiColumnArchive-title'
wp option delete 'widget-LJMultiColumnArchive-showpostcount'
wp option delete 'widget-LJMultiColumnArchive-numcolumns'

