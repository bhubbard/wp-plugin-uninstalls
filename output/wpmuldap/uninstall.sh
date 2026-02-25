#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ldapAuth'
wp option delete 'ldapDisableSignup'
wp option delete 'ldapSSOEnabled'
wp option delete 'ldapLinuxWindows'
wp option delete 'ldapAttributeMail'
wp option delete 'ldapAttributeNickname'
wp option delete 'ldapAttributeGivenname'
wp option delete 'ldapAttributeSn'
wp option delete 'ldapAttributePhone'
wp option delete 'ldapAttributeHomedir'
wp option delete 'ldapAttributeMember'
wp option delete 'ldapAttributeMacaddress'
wp option delete 'ldapAttributeDn'
wp option delete 'ldapAttributeDN'
wp option delete 'ldapAttributeMemberNix'
wp option delete 'ldapAttributeGroupObjectclassNix'
wp option delete 'ldapAttributeGroupObjectclass'
wp option delete 'ldapAttributeNixSearch'
wp option delete 'ldapAttributeWinSearch'
wp option delete 'ldapPublicDisplayName'
wp option delete 'ldapCreateBlog'
wp option delete 'ldapCreateAcct'
wp option delete 'ldapSignupMessage'
wp option delete 'ldapSiteOneAdd'
wp option delete 'dashboard_blog'
wp option delete 'default_user_role'
wp option delete 'ldapAddUser'
wp option delete 'ldapBulkAdd'
wp option delete 'ldapCreateLocalUser'
wp option delete 'ldapServerPass'
wp option delete 'ldapServerPassNeedsResave'
wp option delete 'ldapGroupAllowLogin'
wp option delete 'ldapGroupDenyLogin'
wp option delete 'ldapfixmetafor15'
wp option delete 'ldapfixdisplayname'
wp option delete 'ldapServerAddr'
wp option delete 'ldapServerPort'
wp option delete 'ldapServerOU'
wp option delete 'ldapServerCN'
wp option delete 'ldapEnableSSL'
wp option delete 'ldapLocalEmail'
wp option delete 'ldapLocalEmailSubj'
wp option delete 'ldapLocalEmailMessage'
wp option delete 'ldapLDAPEmail'
wp option delete 'ldapLDAPEmailSubj'
wp option delete 'ldapLDAPEmailMessage'
wp option delete 'ldapGetPasswordMessage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ldap_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ldap_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ldap_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ldap_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'primary_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_name'"
