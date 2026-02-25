#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'bp_verified_member_new_requests'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_verified_member_verification_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_verified_member_verification_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_verified_member_verification_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_verified_member_verification_request'"
