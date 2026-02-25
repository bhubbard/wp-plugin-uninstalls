-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Circolari_EditorGutenberg', 'Circolari_Versione', 'Circolari_Visibilita_Pubblica', 'Circolari_Categoria', 'Circolari_GGScadenza', 'Circolari_NrCircHome', 'Circolari_UsaGroups');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_visibilita', '_sciopero', '_firma', '_scadenza', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_numero', '_anno', '_visibilita_generale', 'gruppo');
DELETE FROM wp_usermeta WHERE meta_key IN ('_visibilita', '_sciopero', '_firma', '_scadenza', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_numero', '_anno', '_visibilita_generale', 'gruppo');
DELETE FROM wp_termmeta WHERE meta_key IN ('_visibilita', '_sciopero', '_firma', '_scadenza', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_numero', '_anno', '_visibilita_generale', 'gruppo');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_visibilita', '_sciopero', '_firma', '_scadenza', '_easymail_recipients', '_placeholder_easymail_post', '_placeholder_post_imgsize', '_placeholder_newsletter_imgsize', '_easymail_theme', '_sendNewsLetter', '_numero', '_anno', '_visibilita_generale', 'gruppo');

