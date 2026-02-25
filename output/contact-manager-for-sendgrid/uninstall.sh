#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmfs-sendgrid-register'
wp option delete 'cmfs-sendgrid-register-list'
wp option delete 'cmfs-sendgrid-key'
wp option delete 'cmfs-sendgrid-sandbox'
wp option delete 'tw-sendgrid-sender'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
