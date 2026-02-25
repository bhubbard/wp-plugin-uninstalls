#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'collapsLinkInFooter'
wp option delete 'collapsLinkOrigStyle'
wp option delete 'collapsLinkDefaultStyles'
wp option delete 'collapsLinkStyle'
wp option delete 'collapsLinkSidebarId'

