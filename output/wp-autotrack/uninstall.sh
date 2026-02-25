#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eventtracker'
wp option delete 'outboundFormTracker'
wp option delete 'outboundLinkTracker'
wp option delete 'socialWidgetTracker'
wp option delete 'gaid'

