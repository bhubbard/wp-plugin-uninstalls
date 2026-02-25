#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lianamailer_contactform7_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_plugin_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_plugin_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_plugin_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_plugin_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_plugin_mailing_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_plugin_mailing_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_plugin_mailing_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_plugin_mailing_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_plugin_account_sites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_plugin_account_sites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_plugin_account_sites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_plugin_account_sites'"
