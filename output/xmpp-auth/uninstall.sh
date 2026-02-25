#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imauth_configuration'
wp option delete 'imauth_transactions'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'imauth_configuration_user_%'"
wp option delete 'imauth_dns_srv_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jid'"
