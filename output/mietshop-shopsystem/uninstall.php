<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cosmoshop-widget-adminkonfiguration-texteditor-button-anzeigen');
delete_site_option('cosmoshop-widget-adminkonfiguration-texteditor-button-anzeigen');
delete_option('cosmoshop-widget-style-file');
delete_site_option('cosmoshop-widget-style-file');
delete_option('cosmoshop-widget-shopurl');
delete_site_option('cosmoshop-widget-shopurl');
delete_option('cosmoshop-widget-script-pfad');
delete_site_option('cosmoshop-widget-script-pfad');
delete_option('cosmoshop-widget-sprache');
delete_site_option('cosmoshop-widget-sprache');
delete_option('cosmoshop-widget-style');
delete_site_option('cosmoshop-widget-style');
delete_option('cosmoshop-widget-einbindung');
delete_site_option('cosmoshop-widget-einbindung');
delete_option('cosmoshop-widget-template');
delete_site_option('cosmoshop-widget-template');
delete_option('cosmoshop-widget-script-param-vorschau');
delete_site_option('cosmoshop-widget-script-param-vorschau');
delete_option('cosmoshop-widget-script-param-bestseller');
delete_site_option('cosmoshop-widget-script-param-bestseller');
delete_option('cosmoshop-widget-script-param-highlight');
delete_site_option('cosmoshop-widget-script-param-highlight');
delete_option('cosmoshop-widget-cachingzeit');
delete_site_option('cosmoshop-widget-cachingzeit');
delete_option('cosmoshop-widget-adminkonfiguration-expertenansicht');
delete_site_option('cosmoshop-widget-adminkonfiguration-expertenansicht');
delete_option('cosmoshop-widget-adminkonfiguration-tinymce-button-anzeigen');
delete_site_option('cosmoshop-widget-adminkonfiguration-tinymce-button-anzeigen');
delete_option('cosmoshop-widget-adminkonfiguration-tinymce-platzhalter-anzeigen');
delete_site_option('cosmoshop-widget-adminkonfiguration-tinymce-platzhalter-anzeigen');
delete_option('cosmoshop-widget-adminkonfiguration-texteditor-button-funktion');
delete_site_option('cosmoshop-widget-adminkonfiguration-texteditor-button-funktion');
delete_option('cosmoshop-widget-cache_del');
delete_site_option('cosmoshop-widget-cache_del');
delete_option('cosmoshop-widget-preishinweis');
delete_site_option('cosmoshop-widget-preishinweis');
delete_option('cosmoshop-widget');
delete_site_option('cosmoshop-widget');
delete_option('cosmoshop-widget-install');
delete_site_option('cosmoshop-widget-install');

