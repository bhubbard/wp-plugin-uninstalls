#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'opalservice_settings'
wp option delete 'elementor_cpt_support'
wp option delete 'opalservice_version'
wp option delete 'opalservice_version_upgraded_from'
wp option delete 'opalservice_setup'

# Delete Transients
wp transient delete '_opalservice_installed'
wp transient delete '_opalservice_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pending_to_use_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pending_to_use_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pending_to_use_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pending_to_use_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%avatar_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%avatar_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%avatar_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%avatar_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category-image-id'"
