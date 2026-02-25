#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sdxrpc_disable_enabled'

# Delete Transients
wp transient delete 'sdxrpc_activation_redirect'

