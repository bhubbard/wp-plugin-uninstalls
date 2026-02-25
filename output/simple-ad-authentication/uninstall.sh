#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'LDAP_authentication_auto_create_user'
wp option delete 'LDAP_authentication_use_ssl'
wp option delete 'LDAP_authentication_server'
wp option delete 'LDAP_authentication_base_dn'
wp option delete 'LDAP_authentication_role_equivalent_groups'
wp option delete 'LDAP_authentication_default_email_domain'
wp option delete 'LDAP_authentication_bind_dn'
wp option delete 'LDAP_authentication_bind_password'
wp option delete 'LDAP_authentication_uid_filter'
wp option delete 'LDAP_authentication_group_filter'
wp option delete 'LDAP_authentication_group_attribute'

