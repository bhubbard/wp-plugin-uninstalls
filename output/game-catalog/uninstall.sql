-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gc_price_format', 'gc_description_length', 'gc_news_days');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_lock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_lock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_lock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_lock');

