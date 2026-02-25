-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('localization', 'devise', 'tableau_amortissement', 'couleurfond', 'couleurp', 'couleurlien', 'couleurlienhover', 'couleurh2', 'couleurh3', 'couleurh4', 'couleurchamp', 'couleurmisevaleur1', 'couleurencadrement', 'couleurencadrementfond', 'couleurtableth', 'couleurtableimpaires', 'couleurtablepaires', 'couleurerreur', 'noH2', 'couleurFond', 'couleurP', 'couleurLien', 'couleurLienHover', 'couleurH2', 'couleurH3', 'couleurH4', 'couleurChamp', 'couleurMiseValeur1', 'couleurEncadrement', 'couleurEncadrementFond', 'couleurErreur', 'couleurTableTh', 'couleurTableImpaires', 'couleurTablePaires', 'lienCyberpret');

