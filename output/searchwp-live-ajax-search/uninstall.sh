#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'classic-editor-replace'
wp option delete 'searchwp_forms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%forms'"
wp option delete 'searchwp_live_search_version'
wp option delete 'searchwp_live_search_version_upgraded_from'
wp option delete 'searchwp_live_search_last_update'
wp option delete 'searchwp_live_search_activation_redirect'
wp option delete 'searchwp_license'
wp option delete 'searchwp_live_search_admin_notices'

# Delete Transients
wp transient delete 'searchwp_live_search_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'searchwp_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'searchwp_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'searchwp_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'searchwp_admin_form_embed_wizard'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'searchwp_live_search_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'searchwp_live_search_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'searchwp_live_search_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'searchwp_live_search_admin_notices'"
