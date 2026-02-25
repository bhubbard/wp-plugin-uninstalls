#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'collapsPageVersion'
wp option delete 'collapsPageStyle'
wp option delete 'collapsPageOrigStyle'
wp option delete 'collapsPageDefaultStyles'
wp option delete 'collapsPageSidebarId'
wp option delete 'widget_collapspage'

