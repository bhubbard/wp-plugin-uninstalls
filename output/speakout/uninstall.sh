#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dk_speakout_options'
wp option delete 'dk_speakout_pro_version'
wp option delete 'dk_speakout_version'
wp option delete 'dk_speakout_license_key_verified'
wp option delete 'dk_speakout_license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailerlite_form_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailerlite_form_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailerlite_form_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailerlite_form_hidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'SpeakOut_plugin_notice_ignore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'SpeakOut_plugin_notice_ignore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'SpeakOut_plugin_notice_ignore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'SpeakOut_plugin_notice_ignore'"
