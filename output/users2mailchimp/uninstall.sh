#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'u2mc-api_key'
wp option delete 'u2mc-list'
wp option delete 'u2mc-group'
wp option delete 'u2mc-subgroup'
wp option delete 'u2mc-use_roles'
wp option delete 'u2mc-needconfirm'
wp option delete 'u2mc-accept'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'u2mc_mailchimp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'u2mc_mailchimp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'u2mc_mailchimp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'u2mc_mailchimp'"
