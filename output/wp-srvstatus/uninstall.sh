#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wgtitle'
wp option delete 'srvLink'
wp option delete 'serveraddress'
wp option delete 'port'
wp option delete 'dspname'
wp option delete 'srvLink1'
wp option delete 'serveraddress1'
wp option delete 'port1'
wp option delete 'dspname1'
wp option delete 'dspstyle'
wp option delete 'wpsrvstatus_widget'
wp option delete 'srvstatus_options'
wp option delete 'srvstatus_widget'

