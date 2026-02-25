-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tbss_EnableExternalService', 'tbss_LinkMode', 'tbss_OpenInNewTab', 'tbss_RespectExistingLinks', 'tbss_SkipTags', 'tbss_SkipClasses', 'tbss_ThemeMode', 'tbs_EnableExternalService', 'tbs_LinkMode', 'tbs_OpenInNewTab', 'tbs_RespectExistingLinks', 'tbs_SkipTags', 'tbs_SkipClasses', 'tbs_ThemeMode');

