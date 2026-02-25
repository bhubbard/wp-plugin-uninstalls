#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartsupport_wp_settings'
wp option delete 'smartsupport_wp_rag_collections'

# Delete Transients
wp transient delete 'smartsupport_rag_notice'
wp transient delete 'smartsupport_wp_activation_redirect'

