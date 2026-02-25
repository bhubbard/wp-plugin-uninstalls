-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rop_last_update', 'rop_interval', 'rop_interval_slop', 'rop_age_limit', 'rop_omit_cats', 'rop_show_original_pubdate', 'rop_pos', 'rop_at_top');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rop_original_pub_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('rop_original_pub_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('rop_original_pub_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rop_original_pub_date');

