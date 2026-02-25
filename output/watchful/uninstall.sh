#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'watchfulSettings'
wp option delete 'watchful_last_login_time'
wp option delete 'watchful_last_login_error_counter'
wp option delete 'watchfulDoActivationRedirect'
wp option delete 'watchfulMessage'

# Delete Transients
wp transient delete 'update_themes'
wp transient delete 'signatures'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'watchful_sso_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'watchful_sso_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'watchful_sso_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'watchful_sso_id'"
