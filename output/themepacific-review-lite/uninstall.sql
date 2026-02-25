-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themepacific_wpreview_settings');
DELETE FROM wp_options WHERE option_name LIKE 'tpcrn_rating_tot%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crn_rating', 'crn_rating_only', 'crn_rate_style');
DELETE FROM wp_usermeta WHERE meta_key IN ('crn_rating', 'crn_rating_only', 'crn_rate_style');
DELETE FROM wp_termmeta WHERE meta_key IN ('crn_rating', 'crn_rating_only', 'crn_rate_style');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crn_rating', 'crn_rating_only', 'crn_rate_style');

