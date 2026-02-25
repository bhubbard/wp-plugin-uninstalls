-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Circolari_EditorGutenberg', 'Circolari_Versione', 'Circolari_Visibilita_Pubblica', 'Circolari_Categoria', 'Circolari_NumPerPag', 'Circolari_GGScadenza', 'Circolari_NrCircHome', 'Circolari_IntestElenco', 'Circolari_IntestElencoDest', 'Circolari_TestiRisposte', 'Circolari_Tipo', 'Circolari_CleanUninstall', 'Circolari_UsaGroups', 'Circolari_GestPerm');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sign', '_scadenza', '_firma', '_sciopero', '_numero', '_anno', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_destinatari', 'groups-read');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sign', '_scadenza', '_firma', '_sciopero', '_numero', '_anno', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_destinatari', 'groups-read');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sign', '_scadenza', '_firma', '_sciopero', '_numero', '_anno', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_destinatari', 'groups-read');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sign', '_scadenza', '_firma', '_sciopero', '_numero', '_anno', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_destinatari', 'groups-read');

