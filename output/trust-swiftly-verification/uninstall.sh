#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'a_verifications'
wp option delete 'a_trust_ids'
wp option delete 'trustswiftly_verification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trust_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trust_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trust_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trust_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trust_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trust_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trust_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trust_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_trust_embed_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_trust_embed_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_trust_embed_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_trust_embed_user_id'"
