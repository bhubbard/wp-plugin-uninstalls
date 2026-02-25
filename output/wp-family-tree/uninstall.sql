-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('family_tree_category_key', 'family_tree_link', 'show_biodata_on_posts_page', 'family_tree_toolbar_blogpage', 'family_tree_toolbar_treenav', 'showcreditlink', 'bOneNamePerLine', 'bOnlyFirstName', 'bBirthAndDeathDates', 'bConcealLivingDates', 'bShowSpouse', 'bShowOneSpouse', 'bVerticalSpouses', 'bMaidenName', 'bShowGender', 'bDiagonalConnections', 'bRefocusOnClick', 'bShowToolbar', 'canvasbgcol', 'nodeoutlinecol', 'nodefillcol', 'nodefillopacity', 'nodetextcolour', 'nodecornerradius', 'nodeminwidth', 'generationheight');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gender', 'father', 'mother', 'spouse', 'born', 'died');
DELETE FROM wp_usermeta WHERE meta_key IN ('gender', 'father', 'mother', 'spouse', 'born', 'died');
DELETE FROM wp_termmeta WHERE meta_key IN ('gender', 'father', 'mother', 'spouse', 'born', 'died');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gender', 'father', 'mother', 'spouse', 'born', 'died');

