#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nxp_domain'
wp option delete 'nxp_key'
wp option delete 'nxp_listview'
wp option delete 'nxp_embedhost'

