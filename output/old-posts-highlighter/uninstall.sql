-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('OPH_interval', 'OPH_interval_aleatoire', 'OPH_age_limit', 'OPH_show_original_pubdate', 'OPH_give_credit', 'OPH_pos', 'OPH_at_top', 'OPH_omit_cats', 'OPH_FORCED_POSTS', 'OPH_last_update');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('OPH_original_pub_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('OPH_original_pub_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('OPH_original_pub_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('OPH_original_pub_date');

