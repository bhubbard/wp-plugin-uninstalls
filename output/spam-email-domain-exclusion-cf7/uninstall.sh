#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sede_cf7_blacklisted_domain'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spam-email-excluded-domains-cf7'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spam-email-excluded-domains-cf7'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spam-email-excluded-domains-cf7'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spam-email-excluded-domains-cf7'"
