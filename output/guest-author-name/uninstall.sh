#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'guest_author_name_settings'
wp option delete 'guest_author_name_settings '

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simply_guest_author_premium_nag_ignore4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simply_guest_author_premium_nag_ignore4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simply_guest_author_premium_nag_ignore4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simply_guest_author_premium_nag_ignore4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfly_guest_author_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfly_guest_author_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfly_guest_author_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfly_guest_author_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfly_guest_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfly_guest_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfly_guest_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfly_guest_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfly_guest_author_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfly_guest_author_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfly_guest_author_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfly_guest_author_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfly_guest_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfly_guest_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfly_guest_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfly_guest_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sfly_guest_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sfly_guest_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sfly_guest_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sfly_guest_author'"
