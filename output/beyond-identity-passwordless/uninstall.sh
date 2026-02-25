#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_beyond-identity-passwordless--%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_beyond-identity-passwordless-state--%' OR option_name LIKE '_site_transient_beyond-identity-passwordless-state--%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_beyond-identity-passwordless--%' OR option_name LIKE '_site_transient_beyond-identity-passwordless--%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyond-identity-passwordless-last-token-response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyond-identity-passwordless-last-token-response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyond-identity-passwordless-last-token-response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyond-identity-passwordless-last-token-response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyond_identity_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyond_identity_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyond_identity_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyond_identity_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyond-identity-passwordless-last-id-token-claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyond-identity-passwordless-last-id-token-claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyond-identity-passwordless-last-id-token-claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyond-identity-passwordless-last-id-token-claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyond-identity-passwordless-last-user-claim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyond-identity-passwordless-last-user-claim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyond-identity-passwordless-last-user-claim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyond-identity-passwordless-last-user-claim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'beyond-identity-passwordless-subject-identity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'beyond-identity-passwordless-subject-identity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'beyond-identity-passwordless-subject-identity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'beyond-identity-passwordless-subject-identity'"
