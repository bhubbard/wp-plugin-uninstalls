#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auth0_db_version'
wp option delete 'widget_wp_auth0_popup_widget'
wp option delete 'widget_wp_auth0_widget'
wp option delete 'widget_wp_auth0_social_amplification_widget'
wp option delete 'wp_auth0_client_grant_failed'
wp option delete 'wp_auth0_grant_types_failed'
wp option delete 'wp_auth0_client_grant_success'
wp option delete 'wp_auth0_grant_types_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
