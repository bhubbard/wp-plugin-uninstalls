-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TempestaApiKey', 'TempestaDisableMetatags');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tm_meta_title', 'tm_meta_keywords', 'tm_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('tm_meta_title', 'tm_meta_keywords', 'tm_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('tm_meta_title', 'tm_meta_keywords', 'tm_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tm_meta_title', 'tm_meta_keywords', 'tm_meta_description');

