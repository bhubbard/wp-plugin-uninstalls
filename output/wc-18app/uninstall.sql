-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc18-password', 'wc18-categories', 'wc18-image', 'wc18-cert-activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc-codice-18app');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc-codice-18app');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc-codice-18app');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc-codice-18app');

