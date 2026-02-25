-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quotable_activation', 'wpseo_social', 'quotable_updated', 'quotable_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quotable_blockquote_disable', '_quotable_text_disable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quotable_blockquote_disable', '_quotable_text_disable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quotable_blockquote_disable', '_quotable_text_disable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quotable_blockquote_disable', '_quotable_text_disable');

