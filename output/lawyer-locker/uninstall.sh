#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lawyer_locker_internal_encryption_key'
wp option delete 'lawyer_locker_enable_lockbox'
wp option delete 'lawyer_locker_encryption_key_location'
wp option delete 'lawyer_locker_privilege_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_expiration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_custom_privilege_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_custom_privilege_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_custom_privilege_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_custom_privilege_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_client_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_client_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_client_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_client_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_internal_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_internal_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_internal_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_internal_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_encryption_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_encryption_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_encryption_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_encryption_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_expiration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_expiration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_expiration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_expiration_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_encrypted_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_encrypted_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_encrypted_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_encrypted_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lawyer_locker_read_lockers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lawyer_locker_read_lockers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lawyer_locker_read_lockers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lawyer_locker_read_lockers'"
