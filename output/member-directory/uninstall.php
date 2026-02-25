<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('memberDirectoryUserRoleSelect');
delete_site_option('memberDirectoryUserRoleSelect');
delete_option('bulkremovetermfromglossarylist');
delete_site_option('bulkremovetermfromglossarylist');
delete_option('postDirectorySelect');
delete_site_option('postDirectorySelect');
delete_option('tooltipsGlossaryIndexPage');
delete_site_option('tooltipsGlossaryIndexPage');
delete_option('enabGlossaryIndexPage');
delete_site_option('enabGlossaryIndexPage');
delete_option('enableLanguageForGlossary');
delete_site_option('enableLanguageForGlossary');
delete_option('memberdirectorysignificantdigitalsuperscripts');
delete_site_option('memberdirectorysignificantdigitalsuperscripts');
delete_option('showImageinglossary');
delete_site_option('showImageinglossary');
delete_option('enableTooltipsForGlossaryPage');
delete_site_option('enableTooltipsForGlossaryPage');
delete_option('enableGlossarySearchable');
delete_site_option('enableGlossarySearchable');
delete_option('glossaryNumbersOrNot');
delete_site_option('glossaryNumbersOrNot');
delete_option('glossaryExcerptOrContentSelect');
delete_site_option('glossaryExcerptOrContentSelect');
delete_option('bulkremoveuseridfrommemberdirectory');
delete_site_option('bulkremoveuseridfrommemberdirectory');
delete_option('glossaryNavItemFontSize');
delete_site_option('glossaryNavItemFontSize');
delete_option('hidecountnumberitem');
delete_site_option('hidecountnumberitem');
delete_option('glossaryIndexPageTermFontSize');
delete_site_option('glossaryIndexPageTermFontSize');
delete_option('hidezeronumberitem');
delete_site_option('hidezeronumberitem');
delete_option('glossarySelectedNavItemFontSize');
delete_site_option('glossarySelectedNavItemFontSize');
delete_option('saved_allowed_user_roles_in_member_directory');
delete_site_option('saved_allowed_user_roles_in_member_directory');
delete_option('selectsignificantdigitalsuperscripts');
delete_site_option('selectsignificantdigitalsuperscripts');
delete_option('saved_enable_disable_select_statu_user_roles_in_member_directory');
delete_site_option('saved_enable_disable_select_statu_user_roles_in_member_directory');

