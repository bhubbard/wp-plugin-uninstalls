#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-approve-user'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_%' OR option_name LIKE '_site_transient_feed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_feed_mod_%' OR option_name LIKE '_site_transient_feed_mod_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-approve-user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-approve-user-new-registration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-approve-user-new-registration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-approve-user-new-registration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-approve-user-new-registration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-approve-user-mail-sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-approve-user-mail-sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-approve-user-mail-sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-approve-user-mail-sent'"
