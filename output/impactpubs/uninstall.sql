-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_impactpubs_pubsource', '_impactpubs_identifier', '_impactpubs_display-mode', '_impactpubs_html');
DELETE FROM wp_usermeta WHERE meta_key IN ('_impactpubs_pubsource', '_impactpubs_identifier', '_impactpubs_display-mode', '_impactpubs_html');
DELETE FROM wp_termmeta WHERE meta_key IN ('_impactpubs_pubsource', '_impactpubs_identifier', '_impactpubs_display-mode', '_impactpubs_html');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_impactpubs_pubsource', '_impactpubs_identifier', '_impactpubs_display-mode', '_impactpubs_html');

