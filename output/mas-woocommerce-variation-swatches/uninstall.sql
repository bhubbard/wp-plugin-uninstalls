-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_term_counts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mas_wcvs_color', 'mas_wcvs_label', 'mas_wcvs_image_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('mas_wcvs_color', 'mas_wcvs_label', 'mas_wcvs_image_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('mas_wcvs_color', 'mas_wcvs_label', 'mas_wcvs_image_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mas_wcvs_color', 'mas_wcvs_label', 'mas_wcvs_image_id');

