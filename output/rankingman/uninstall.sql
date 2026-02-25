-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_rman_user_setting', 'mgo_entire_options', 'wp_rmanpro_user_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rank_num', 'rank_linkurl', 'rank_detailurl', 'rank_price', 'button_text', 'rank_rate');
DELETE FROM wp_usermeta WHERE meta_key IN ('rank_num', 'rank_linkurl', 'rank_detailurl', 'rank_price', 'button_text', 'rank_rate');
DELETE FROM wp_termmeta WHERE meta_key IN ('rank_num', 'rank_linkurl', 'rank_detailurl', 'rank_price', 'button_text', 'rank_rate');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rank_num', 'rank_linkurl', 'rank_detailurl', 'rank_price', 'button_text', 'rank_rate');

