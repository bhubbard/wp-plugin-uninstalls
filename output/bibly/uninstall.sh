#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bibly_linkVersion'
wp option delete 'bibly_popupVersion'
wp option delete 'bibly_enablePopups'
wp option delete 'bibly_startNodeId'

