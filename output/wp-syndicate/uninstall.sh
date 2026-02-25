#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_syndicate_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-feed-retrieve-term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-feed-retrieve-term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-feed-retrieve-term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-feed-retrieve-term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-feed-url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-feed-url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-feed-url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-feed-url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-registration-method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-registration-method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-registration-method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-registration-method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-default-post-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-default-post-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-default-post-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-default-post-type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-author-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-author-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-author-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-author-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-default-post-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-default-post-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-default-post-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-default-post-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-basic-auth-user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-basic-auth-user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-basic-auth-user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-basic-auth-user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_syndicate-basic-auth-pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_syndicate-basic-auth-pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_syndicate-basic-auth-pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_syndicate-basic-auth-pass'"
