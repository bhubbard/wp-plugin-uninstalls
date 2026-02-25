-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('post_type_rules_flased_dca_artist', 'post_type_rules_flased_dca_labels', 'post_type_rules_flased_dca_music', 'dca_show_fb', 'dca_show_tw');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('link_user', 'back_cover_id', 'label_id', 'artist_id', 'release_date', 'amazon_url', 'itunes_url', 'mp3musicfactory_url', 'custom_txt_1', 'custom_txt_2', 'custom_txt_3', 'custom_txt_4', 'custom_txt_5', 'custom_url_1', 'custom_url_2', 'custom_url_3', 'custom_url_4', 'custom_url_5');
DELETE FROM wp_usermeta WHERE meta_key IN ('link_user', 'back_cover_id', 'label_id', 'artist_id', 'release_date', 'amazon_url', 'itunes_url', 'mp3musicfactory_url', 'custom_txt_1', 'custom_txt_2', 'custom_txt_3', 'custom_txt_4', 'custom_txt_5', 'custom_url_1', 'custom_url_2', 'custom_url_3', 'custom_url_4', 'custom_url_5');
DELETE FROM wp_termmeta WHERE meta_key IN ('link_user', 'back_cover_id', 'label_id', 'artist_id', 'release_date', 'amazon_url', 'itunes_url', 'mp3musicfactory_url', 'custom_txt_1', 'custom_txt_2', 'custom_txt_3', 'custom_txt_4', 'custom_txt_5', 'custom_url_1', 'custom_url_2', 'custom_url_3', 'custom_url_4', 'custom_url_5');
DELETE FROM wp_commentmeta WHERE meta_key IN ('link_user', 'back_cover_id', 'label_id', 'artist_id', 'release_date', 'amazon_url', 'itunes_url', 'mp3musicfactory_url', 'custom_txt_1', 'custom_txt_2', 'custom_txt_3', 'custom_txt_4', 'custom_txt_5', 'custom_url_1', 'custom_url_2', 'custom_url_3', 'custom_url_4', 'custom_url_5');

