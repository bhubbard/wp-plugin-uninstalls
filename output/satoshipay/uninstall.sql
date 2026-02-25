-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('satoshipay_api', 'checkedCredentials', 'validCredentials', 'satoshipay_ad_blocker_detection');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_satoshipay_id', '_satoshipay_pricing', '_satoshipay_secret', '_satoshipay_asset', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_satoshipay_id', '_satoshipay_pricing', '_satoshipay_secret', '_satoshipay_asset', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_satoshipay_id', '_satoshipay_pricing', '_satoshipay_secret', '_satoshipay_asset', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_satoshipay_id', '_satoshipay_pricing', '_satoshipay_secret', '_satoshipay_asset', '_wp_attachment_image_alt');

