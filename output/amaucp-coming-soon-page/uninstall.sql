-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AMAUCP_Options', 'amaucp_stylesheet', 'active_sitewide_plugins', 'amaucp_irsetheme', 'amaucp_feature_quote', 'amaucp_feature_about', 'amaucp_feature_service', 'amaucp_feature_team', 'amaucp_feature_contact', 'amaucp_themequotes_bio');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

