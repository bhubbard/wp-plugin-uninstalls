#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_update_plugin' OR option_name LIKE '_site_transient_%_update_plugin'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payamak-pars_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payamak-pars_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payamak-pars_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payamak-pars_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payamak-pars_referenceno'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payamak-pars_referenceno'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payamak-pars_referenceno'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payamak-pars_referenceno'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payamakparssms_referenceno'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payamakparssms_referenceno'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payamakparssms_referenceno'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payamakparssms_referenceno'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sms_registered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sms_registered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sms_registered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sms_registered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payamakparssms_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payamakparssms_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payamakparssms_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payamakparssms_mobile'"
