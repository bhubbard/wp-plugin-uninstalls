#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lspw_options'
wp option delete 'lsp_options'

# Delete Transients
wp transient delete 'lspw-admin-notice'

