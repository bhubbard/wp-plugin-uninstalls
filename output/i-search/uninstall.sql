-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('isrc_hash', 'isrc_db_ver', 'isrc_delete_data', 'isrc_default_sc', 'isrc_previewdata');
DELETE FROM wp_options WHERE option_name LIKE 'isrc_opt_adv_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_log_bad_words_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_opt_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_att_hash_ind_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_att_hash_set_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_opt_content_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_cb_att_hash_set_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_default_sc_%';
DELETE FROM wp_options WHERE option_name LIKE 'isrc_cb_att_hash_ind_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_isrc_all', '_isrc', '_wc_review_count', '_wc_average_rating', 'thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_isrc_all', '_isrc', '_wc_review_count', '_wc_average_rating', 'thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_isrc_all', '_isrc', '_wc_review_count', '_wc_average_rating', 'thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_isrc_all', '_isrc', '_wc_review_count', '_wc_average_rating', 'thumbnail_id');

