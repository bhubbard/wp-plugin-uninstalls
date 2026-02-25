-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsatc_options', 'wsatc_bfn_dismiss', 'wsatc_arn_dismiss', 'wsatc_amn_dismiss', 'wastc_activation_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sc_meta_clicks', '_sc_meta_impression_per_day', '_sc_meta_views');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sc_meta_clicks', '_sc_meta_impression_per_day', '_sc_meta_views');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sc_meta_clicks', '_sc_meta_impression_per_day', '_sc_meta_views');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sc_meta_clicks', '_sc_meta_impression_per_day', '_sc_meta_views');

