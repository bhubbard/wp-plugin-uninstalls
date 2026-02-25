#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modern_check_captch'
wp option delete 'email_radio'
wp option delete 'email_used'
wp option delete 'modern_privatekey'
wp option delete 'modern_publickey'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'modern_contact_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'modern_contact_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'modern_contact_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'modern_contact_code'"
