#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'contactformx_%'"
wp option delete 'contactformx_form'
wp option delete 'contactformx_email'
wp option delete 'contactformx_customize'
wp option delete 'contactformx_appearance'
wp option delete 'contactformx_advanced'
wp option delete 'cfx-dismiss-notice'
wp option delete 'contactformx_init'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipient'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'website'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'refer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'refer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'refer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'refer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'host'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'host'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'host'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'host'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carbon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carbon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carbon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carbon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'agree'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'agree'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'agree'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'agree'"
