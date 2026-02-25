#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_bof_general'
wp option delete 'active_sitewide_plugins'
wp option delete 'wcbulkorderform'

