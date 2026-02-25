-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpho_redirect_visitors_coming', 'wpho_country_selected_htaccess', 'wpho_rewrite_htaccess', 'Timezoneselection', 'Preventsindexingoffolderswithoutindexphp', 'Disabletheserversignature', 'BlockSensitiveFiles', 'ProtectWP-includes', 'protectauthorlink', 'blockauthorscans', 'Enablingthetrackingofsymboliclinks', 'commentspam', 'Protectionagainstfileinjections', 'VariousprotectionsXSSclickjackingandMIME-Typesniffing', 'Disablethehotlinkingofyourpictures', 'RedirectwithoutWWW', 'RedirecttoHTTPS', 'Cachingfilesinthebrowser', 'DisabledheadersETags', 'Compressstaticfiles');

