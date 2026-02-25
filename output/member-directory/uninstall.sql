-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('memberDirectoryUserRoleSelect', 'bulkremovetermfromglossarylist', 'postDirectorySelect', 'tooltipsGlossaryIndexPage', 'enabGlossaryIndexPage', 'enableLanguageForGlossary', 'memberdirectorysignificantdigitalsuperscripts', 'showImageinglossary', 'enableTooltipsForGlossaryPage', 'enableGlossarySearchable', 'glossaryNumbersOrNot', 'glossaryExcerptOrContentSelect', 'bulkremoveuseridfrommemberdirectory', 'glossaryNavItemFontSize', 'hidecountnumberitem', 'glossaryIndexPageTermFontSize', 'hidezeronumberitem', 'glossarySelectedNavItemFontSize', 'saved_allowed_user_roles_in_member_directory', 'selectsignificantdigitalsuperscripts', 'saved_enable_disable_select_statu_user_roles_in_member_directory');

