#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nostr_verify_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nostr_verify_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nostr_verify_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nostr_verify_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nostr_verify_public_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nostr_verify_public_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nostr_verify_public_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nostr_verify_public_key'"
