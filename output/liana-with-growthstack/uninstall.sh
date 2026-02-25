#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'growthstack_lianamailer_status'
wp transient delete 'growthstack_lianamailer_sites'
wp transient delete 'growthstack_lianamailer_site_consents'
wp transient delete 'growthstack_lianamailer_customer_properties'
wp transient delete 'growthstack_lianamailer_customer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_site'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_site'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_site'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_site'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_mailing_lists'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_mailing_lists'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_mailing_lists'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_mailing_lists'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_properties'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lianamailer_plugin_site_consents'"
