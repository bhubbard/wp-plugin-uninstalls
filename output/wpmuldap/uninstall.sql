-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ldapAuth', 'ldapDisableSignup', 'ldapSSOEnabled', 'ldapLinuxWindows', 'ldapAttributeMail', 'ldapAttributeNickname', 'ldapAttributeGivenname', 'ldapAttributeSn', 'ldapAttributePhone', 'ldapAttributeHomedir', 'ldapAttributeMember', 'ldapAttributeMacaddress', 'ldapAttributeDn', 'ldapAttributeDN', 'ldapAttributeMemberNix', 'ldapAttributeGroupObjectclassNix', 'ldapAttributeGroupObjectclass', 'ldapAttributeNixSearch', 'ldapAttributeWinSearch', 'ldapPublicDisplayName', 'ldapCreateBlog', 'ldapCreateAcct', 'ldapSignupMessage', 'ldapSiteOneAdd', 'dashboard_blog', 'default_user_role', 'ldapAddUser', 'ldapBulkAdd', 'ldapCreateLocalUser', 'ldapServerPass', 'ldapServerPassNeedsResave', 'ldapGroupAllowLogin', 'ldapGroupDenyLogin', 'ldapfixmetafor15', 'ldapfixdisplayname', 'ldapServerAddr', 'ldapServerPort', 'ldapServerOU', 'ldapServerCN', 'ldapEnableSSL', 'ldapLocalEmail', 'ldapLocalEmailSubj', 'ldapLocalEmailMessage', 'ldapLDAPEmail', 'ldapLDAPEmailSubj', 'ldapLDAPEmailMessage', 'ldapGetPasswordMessage');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'ldap_login', 'primary_blog', 'display_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'ldap_login', 'primary_blog', 'display_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'ldap_login', 'primary_blog', 'display_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'ldap_login', 'primary_blog', 'display_name');

