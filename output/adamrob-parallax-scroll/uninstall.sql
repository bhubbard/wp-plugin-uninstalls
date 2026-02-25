-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('parallax_meta_height', 'parallax_meta_vpos', 'parallax_meta_hpos', 'parallax_meta_pheight', 'parallax_meta_pheightmob', 'parallax_meta_DisableParImg', 'parallax_meta_DisableParallax', 'parallax_meta_hstyle', 'parallax_meta_FullWidth', 'parallax_meta_speed', 'parallax_meta_parallaxjs');
DELETE FROM wp_usermeta WHERE meta_key IN ('parallax_meta_height', 'parallax_meta_vpos', 'parallax_meta_hpos', 'parallax_meta_pheight', 'parallax_meta_pheightmob', 'parallax_meta_DisableParImg', 'parallax_meta_DisableParallax', 'parallax_meta_hstyle', 'parallax_meta_FullWidth', 'parallax_meta_speed', 'parallax_meta_parallaxjs');
DELETE FROM wp_termmeta WHERE meta_key IN ('parallax_meta_height', 'parallax_meta_vpos', 'parallax_meta_hpos', 'parallax_meta_pheight', 'parallax_meta_pheightmob', 'parallax_meta_DisableParImg', 'parallax_meta_DisableParallax', 'parallax_meta_hstyle', 'parallax_meta_FullWidth', 'parallax_meta_speed', 'parallax_meta_parallaxjs');
DELETE FROM wp_commentmeta WHERE meta_key IN ('parallax_meta_height', 'parallax_meta_vpos', 'parallax_meta_hpos', 'parallax_meta_pheight', 'parallax_meta_pheightmob', 'parallax_meta_DisableParImg', 'parallax_meta_DisableParallax', 'parallax_meta_hstyle', 'parallax_meta_FullWidth', 'parallax_meta_speed', 'parallax_meta_parallaxjs');

