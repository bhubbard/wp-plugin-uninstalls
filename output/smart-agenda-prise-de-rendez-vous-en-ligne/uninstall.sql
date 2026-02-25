-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartagenda_options', 'name_agenda', 'contenu', 'contenu_checked', 'entete', 'entete_checked', 'footer', 'footer_checked', 'bandeau', 'bandeau_checked', 'infosimportantes', 'infosimportantes_checked', 'logo', 'logo_checked', 'photo', 'photo_checked', 'affrdv', 'affrdv_checked', 'activerBouton', 'activerBouton_checked', 'url_bouton', 'texte_bouton', 'activerPopup', 'activerPopup_checked', 'couleur_bouton', 'couleur_texte_bouton', 'position_bouton', 'position_bouton_selected', 'ciblePage', 'ciblePage_selected');

