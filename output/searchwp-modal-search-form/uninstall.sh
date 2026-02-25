#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'searchwp_modal_form_version'
wp option delete 'searchwp_modal_form_version_upgraded_from'
wp option delete 'searchwp_modal_form_last_update'
wp option delete 'searchwp_modal_form_activation_redirect'
wp option delete 'searchwp_modal_form_admin_notices'

# Delete Transients
wp transient delete 'searchwp_modal_form_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_swp_modal_forms_use_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_swp_modal_forms_use_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_swp_modal_forms_use_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_swp_modal_forms_use_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'searchwp_modal_form_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'searchwp_modal_form_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'searchwp_modal_form_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'searchwp_modal_form_admin_notices'"
