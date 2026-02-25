-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piecal_hide_onboarding_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_piecal_start_date', '_piecal_end_date', '_piecal_is_allday', '_piecal_is_event');
DELETE FROM wp_usermeta WHERE meta_key IN ('_piecal_start_date', '_piecal_end_date', '_piecal_is_allday', '_piecal_is_event');
DELETE FROM wp_termmeta WHERE meta_key IN ('_piecal_start_date', '_piecal_end_date', '_piecal_is_allday', '_piecal_is_event');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_piecal_start_date', '_piecal_end_date', '_piecal_is_allday', '_piecal_is_event');

