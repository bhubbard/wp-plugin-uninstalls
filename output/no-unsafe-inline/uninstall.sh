#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'no-unsafe-inline_version'
wp option delete 'no-unsafe-inline'
wp option delete 'no-unsafe-inline-tools'
wp option delete 'no-unsafe-inline-base-rule'
wp option delete 'no-unsafe-inline-global-settings'
wp option delete 'no-unsafe-inline_db_version'

# Delete Transients
wp transient delete 'no_unsafe_inline_admin_notice'

