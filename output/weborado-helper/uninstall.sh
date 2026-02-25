#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webohe_xmlrpc_disabled'

# Delete Transients
wp transient delete 'update_core'

