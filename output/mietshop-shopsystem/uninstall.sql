-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cosmoshop-widget-adminkonfiguration-texteditor-button-anzeigen', 'cosmoshop-widget-style-file', 'cosmoshop-widget-shopurl', 'cosmoshop-widget-script-pfad', 'cosmoshop-widget-sprache', 'cosmoshop-widget-style', 'cosmoshop-widget-einbindung', 'cosmoshop-widget-template', 'cosmoshop-widget-script-param-vorschau', 'cosmoshop-widget-script-param-bestseller', 'cosmoshop-widget-script-param-highlight', 'cosmoshop-widget-cachingzeit', 'cosmoshop-widget-adminkonfiguration-expertenansicht', 'cosmoshop-widget-adminkonfiguration-tinymce-button-anzeigen', 'cosmoshop-widget-adminkonfiguration-tinymce-platzhalter-anzeigen', 'cosmoshop-widget-adminkonfiguration-texteditor-button-funktion', 'cosmoshop-widget-cache_del', 'cosmoshop-widget-preishinweis', 'cosmoshop-widget', 'cosmoshop-widget-install');

