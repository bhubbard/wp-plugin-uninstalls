-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blocked-uri', 'document-uri', 'violated-directive', 'location', 'resolved', 'valid-https-uri', 'original-policy');
DELETE FROM wp_usermeta WHERE meta_key IN ('blocked-uri', 'document-uri', 'violated-directive', 'location', 'resolved', 'valid-https-uri', 'original-policy');
DELETE FROM wp_termmeta WHERE meta_key IN ('blocked-uri', 'document-uri', 'violated-directive', 'location', 'resolved', 'valid-https-uri', 'original-policy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blocked-uri', 'document-uri', 'violated-directive', 'location', 'resolved', 'valid-https-uri', 'original-policy');

