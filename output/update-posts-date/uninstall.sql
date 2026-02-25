-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('updp_last_update', 'updp_interval', 'updp_interval_slop', 'updp_age_limit', 'updp_omit_cats', 'updp_show_original_pubdate', 'updp_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('updp_original_pub_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('updp_original_pub_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('updp_original_pub_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('updp_original_pub_date');

