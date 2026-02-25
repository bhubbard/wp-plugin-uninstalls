-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prh_ml_options_saved_time', 'prh_ml_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_prh_ml_saved_time', '_prh_ml_books', '_prh_ml_keywords', '_prh_ml_exclusions', '_prh_ml_auto_override', '_prh_ml_manual_override');
DELETE FROM wp_usermeta WHERE meta_key IN ('_prh_ml_saved_time', '_prh_ml_books', '_prh_ml_keywords', '_prh_ml_exclusions', '_prh_ml_auto_override', '_prh_ml_manual_override');
DELETE FROM wp_termmeta WHERE meta_key IN ('_prh_ml_saved_time', '_prh_ml_books', '_prh_ml_keywords', '_prh_ml_exclusions', '_prh_ml_auto_override', '_prh_ml_manual_override');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_prh_ml_saved_time', '_prh_ml_books', '_prh_ml_keywords', '_prh_ml_exclusions', '_prh_ml_auto_override', '_prh_ml_manual_override');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_prh_ml_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_prh_ml_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_prh_ml_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_prh_ml_%';

