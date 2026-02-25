-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simdiaw_settings_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('simdiaw-start-date', 'simdiaw-end-date', 'simdiaw-start-time', 'simdiaw-end-time', 'simdiaw-loc', 'simdiaw-url', 'simdiaw-art-id', 'simdiaw-link-text', 'simdiaw-type');
DELETE FROM wp_usermeta WHERE meta_key IN ('simdiaw-start-date', 'simdiaw-end-date', 'simdiaw-start-time', 'simdiaw-end-time', 'simdiaw-loc', 'simdiaw-url', 'simdiaw-art-id', 'simdiaw-link-text', 'simdiaw-type');
DELETE FROM wp_termmeta WHERE meta_key IN ('simdiaw-start-date', 'simdiaw-end-date', 'simdiaw-start-time', 'simdiaw-end-time', 'simdiaw-loc', 'simdiaw-url', 'simdiaw-art-id', 'simdiaw-link-text', 'simdiaw-type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('simdiaw-start-date', 'simdiaw-end-date', 'simdiaw-start-time', 'simdiaw-end-time', 'simdiaw-loc', 'simdiaw-url', 'simdiaw-art-id', 'simdiaw-link-text', 'simdiaw-type');

