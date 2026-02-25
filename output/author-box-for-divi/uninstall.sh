#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abfd-dismiss-notice'
wp option delete 'abfd-dismiss-notice-rating'
wp option delete 'abfd-option-migrate-old-networks'
wp option delete 'abfd-option-disable-on-post-types'
wp option delete 'abfd-option-new-tab'
wp option delete 'abfd-option-email-icon'
wp option delete 'abfd-option-website-icon'
wp option delete 'abfd-option-social-icon-as-original'
wp option delete 'abfd-option-hyperlink-author-page'
wp option delete 'abfd-option-guest-authors'
wp option delete 'abfd-option-multiple-authors'
wp option delete 'abfd-option-author-posts-page-link'
wp option delete 'abfd-option-profile-picture-link'
wp option delete 'abfd-option-author-name-link'
wp option delete 'abfd-option-author-box-position'
wp option delete 'abfd-option-exclude-categories'
wp option delete 'abfd-option-name-prefix'
wp option delete 'abfd-option-icon-shape'
wp option delete 'abfd-option-icon-color'
wp option delete 'abfd-option-link-attributes'
wp option delete 'abfd-option-text-color'
wp option delete 'abfd-option-background-color'
wp option delete 'abfd-option-border-color'
wp option delete 'abfd-option-border-radius'
wp option delete 'abfd-option-border-size'
wp option delete 'abfd-option-profile-picture-position'
wp option delete 'abfd-option-profile-picture-shape'
wp option delete 'abfd-option-profile-picture-border-color'
wp option delete 'abfd-option-profile-picture-border'
wp option delete 'abfd-option-font'
wp option delete 'abfd-option-font-size'
wp option delete 'abfd-option-hyperlink-color'
wp option delete 'abfd-option-license-key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abfd-user-disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abfd-user-disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abfd-user-disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abfd-user-disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abfd-user-photograph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abfd-user-photograph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abfd-user-photograph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abfd-user-photograph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'abfd-user-social-networks-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'abfd-user-social-networks-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'abfd-user-social-networks-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'abfd-user-social-networks-%'"
