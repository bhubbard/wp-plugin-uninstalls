<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpho_redirect_visitors_coming');
delete_site_option('wpho_redirect_visitors_coming');
delete_option('wpho_country_selected_htaccess');
delete_site_option('wpho_country_selected_htaccess');
delete_option('wpho_rewrite_htaccess');
delete_site_option('wpho_rewrite_htaccess');
delete_option('Timezoneselection');
delete_site_option('Timezoneselection');
delete_option('Preventsindexingoffolderswithoutindexphp');
delete_site_option('Preventsindexingoffolderswithoutindexphp');
delete_option('Disabletheserversignature');
delete_site_option('Disabletheserversignature');
delete_option('BlockSensitiveFiles');
delete_site_option('BlockSensitiveFiles');
delete_option('ProtectWP-includes');
delete_site_option('ProtectWP-includes');
delete_option('protectauthorlink');
delete_site_option('protectauthorlink');
delete_option('blockauthorscans');
delete_site_option('blockauthorscans');
delete_option('Enablingthetrackingofsymboliclinks');
delete_site_option('Enablingthetrackingofsymboliclinks');
delete_option('commentspam');
delete_site_option('commentspam');
delete_option('Protectionagainstfileinjections');
delete_site_option('Protectionagainstfileinjections');
delete_option('VariousprotectionsXSSclickjackingandMIME-Typesniffing');
delete_site_option('VariousprotectionsXSSclickjackingandMIME-Typesniffing');
delete_option('Disablethehotlinkingofyourpictures');
delete_site_option('Disablethehotlinkingofyourpictures');
delete_option('RedirectwithoutWWW');
delete_site_option('RedirectwithoutWWW');
delete_option('RedirecttoHTTPS');
delete_site_option('RedirecttoHTTPS');
delete_option('Cachingfilesinthebrowser');
delete_site_option('Cachingfilesinthebrowser');
delete_option('DisabledheadersETags');
delete_site_option('DisabledheadersETags');
delete_option('Compressstaticfiles');
delete_site_option('Compressstaticfiles');

