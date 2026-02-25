-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rapidmail_consumer_key', 'rapidmail_secret_key', 'rapidmail_connector', 'rapidmail_connector_newsletter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rapidmail_newsletter');
DELETE FROM wp_usermeta WHERE meta_key IN ('rapidmail_newsletter');
DELETE FROM wp_termmeta WHERE meta_key IN ('rapidmail_newsletter');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rapidmail_newsletter');

