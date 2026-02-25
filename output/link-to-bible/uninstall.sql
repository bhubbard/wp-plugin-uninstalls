-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ltb_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('LTB_DISABLE', '_ltb_last', 'LTB_BIBLE_VERSION', '_ltb_translation');
DELETE FROM wp_usermeta WHERE meta_key IN ('LTB_DISABLE', '_ltb_last', 'LTB_BIBLE_VERSION', '_ltb_translation');
DELETE FROM wp_termmeta WHERE meta_key IN ('LTB_DISABLE', '_ltb_last', 'LTB_BIBLE_VERSION', '_ltb_translation');
DELETE FROM wp_commentmeta WHERE meta_key IN ('LTB_DISABLE', '_ltb_last', 'LTB_BIBLE_VERSION', '_ltb_translation');

