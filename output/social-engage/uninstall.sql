-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfse_activation_date', 'rfse_no_bug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rf_facebook', 'rf_twitter', 'rf_pinterest', 'rf_linkdin', 'rf_social_last_modified');
DELETE FROM wp_usermeta WHERE meta_key IN ('rf_facebook', 'rf_twitter', 'rf_pinterest', 'rf_linkdin', 'rf_social_last_modified');
DELETE FROM wp_termmeta WHERE meta_key IN ('rf_facebook', 'rf_twitter', 'rf_pinterest', 'rf_linkdin', 'rf_social_last_modified');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rf_facebook', 'rf_twitter', 'rf_pinterest', 'rf_linkdin', 'rf_social_last_modified');

