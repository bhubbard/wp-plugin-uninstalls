#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwc_licencekey'
wp option delete 'dwc_licencename'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dwc_logs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dwc_logs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dwc_logs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dwc_logs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokeos_debug_process'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokeos_debug_process'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokeos_debug_process'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokeos_debug_process'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokeos_debug_userexists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokeos_debug_userexists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokeos_debug_userexists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokeos_debug_userexists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokeos_debug_createuser'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokeos_debug_createuser'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokeos_debug_createuser'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokeos_debug_createuser'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokeos_debug_participation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokeos_debug_participation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokeos_debug_participation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokeos_debug_participation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dwc_liendokeos'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dwc_liendokeos'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dwc_liendokeos'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dwc_liendokeos'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokeos_abo_etat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokeos_abo_etat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokeos_abo_etat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokeos_abo_etat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dokeos_abo_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dokeos_abo_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dokeos_abo_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dokeos_abo_details'"
