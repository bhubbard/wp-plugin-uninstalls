-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('locallinks_amazon', 'locallinks_apple', 'locallinks_kobo', 'locallinks_alib', 'locallinks_google', 'locallinks_abe', 'locallinks_bsorg', 'locallinks_obs', 'locallinks_sw', 'locallinks_ae', 'locallinks_au', 'locallinks_br', 'locallinks_ca', 'locallinks_cn', 'locallinks_de', 'locallinks_es', 'locallinks_fr', 'locallinks_ie', 'locallinks_in', 'locallinks_it', 'locallinks_jp', 'locallinks_mx', 'locallinks_nl', 'locallinks_pl', 'locallinks_sa', 'locallinks_se', 'locallinks_sg', 'locallinks_tr', 'locallinks_uk', 'locallinks_us', 'locallinks_aplaff', 'locallinks_googleaff', 'locallinks_swaff', 'locallinks_koboid', 'locallinks_kobomid', 'locallinks_bsorgusaff', 'locallinks_bsorgukaff', 'locallinks_bsorgesaff', 'locallinks_obsaff', 'locallinks_obssrc', 'locallinks_plugin_version');
DELETE FROM wp_options WHERE option_name LIKE 'locallinks_%';
DELETE FROM wp_options WHERE option_name LIKE '%aff';

