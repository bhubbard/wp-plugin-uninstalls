#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'es_repo_url'
wp option delete 'es_privateKey'
wp option delete 'es_appID'
wp option delete 'es_guest_option'
wp option delete 'es_guest_id'
wp option delete 'es_auth_key'
wp option delete 'es_repo_host'
wp option delete 'es_publicKey'
wp option delete 'es_repo_public_key'
wp option delete 'es_repo_port'
wp option delete 'es_repo_clientPort'
wp option delete 'es_repo_domain'
wp option delete 'es_repo_authenticationwebservice_wsdl'
wp option delete 'es_repo_usagewebservice_wsdl'
wp option delete 'es_repo_protocol'
wp option delete 'es_repo_version'
wp option delete 'es_auth_userid'
wp option delete 'es_auth_lastname'
wp option delete 'es_auth_firstname'
wp option delete 'es_auth_mail'
wp option delete 'es_auth_affiliation'
wp option delete 'es_auth_affiliation_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_repo_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_repo_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_repo_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_repo_ticket'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_repo_domain'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_repo_domain'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_repo_domain'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_repo_domain'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'es_plugin_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'es_plugin_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'es_plugin_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'es_plugin_url'"
