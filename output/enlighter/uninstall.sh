#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enlighter-customizer'
wp option delete 'enlighter-cache-hash'
wp option delete 'enlighter-activation-redirect'
wp option delete 'enlighter-upgrade'
wp option delete 'enlighter-version'
wp option delete 'enlighter-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'enlighter-%'"

# Delete Transients
wp transient delete 'enlighter_userthemes'

