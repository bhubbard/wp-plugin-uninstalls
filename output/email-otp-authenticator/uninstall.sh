#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailotpauthn_templatesdata'
wp option delete 'emailotpauthn_extremedemo'
wp option delete 'emailotpauthn_isaddonfilplcd'
wp option delete 'emailotpauthn_enable'
wp option delete 'emailotpauthn_useupgrdfiture'
wp option delete 'emailotpauthn_email_subject'
wp option delete 'emailotpauthn_email_body'
wp option delete 'emailotpauthn_dfltextrnalcss'
wp option delete 'emailotpauthn_mdfdextrnalcss'
wp option delete 'emailotpauthn_message'
wp option delete 'emailotpauthn_settingsdetls'
wp option delete 'emailotpauthn_formnoticentxt'
wp option delete 'emailotpauthn_blockedemails'
wp option delete 'emailotpauthn_allowedemails'
wp option delete 'emailotpauthn_blockedmailid'
wp option delete 'emailotpauthn_emailsettings'
wp option delete 'emailotpauthn_firelimit'
wp option delete 'emailotpauthn_duralimit'
wp option delete 'emailotpauthn_validfor'
wp option delete 'emailotpauthn_cleanaftrdays'
wp option delete 'emailotpauthn_lognatmptlimit'
wp option delete 'emailotpauthn_rgstratmptlmit'
wp option delete 'emailotpauthn_useratmptlimit'
wp option delete 'emailotpauthn_tokenvlidfrmbr'
wp option delete 'emailotpauthn_guestatmptlmit'
wp option delete 'emailotpauthn_tokenvlidfrgst'
wp option delete 'emailotpauthn_isactvfrmmail'
wp option delete 'emailotpauthn_mmbrrjtrdcturl'
wp option delete 'emailotpauthn_gustrjtrdcturl'
wp option delete 'emailotpauthn_mmbrvrfrdcturl'
wp option delete 'emailotpauthn_gustvrfrdcturl'

# Delete Transients
wp transient delete 'is_eotpa_data_eximported'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_emailotpauthn_%' OR option_name LIKE '_site_transient_emailotpauthn_%'"
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_data_attribute'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_data_attribute'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_data_attribute'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_data_attribute'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emilotpauthn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emilotpauthn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emilotpauthn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emilotpauthn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emilotpatmpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emilotpatmpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emilotpatmpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emilotpatmpt'"
