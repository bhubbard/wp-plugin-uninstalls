#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wwa_init'
wp option delete 'wwa_options'
wp option delete 'wwa_version'
wp option delete 'wwa_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webauthn_only'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webauthn_only'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webauthn_only'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webauthn_only'"
