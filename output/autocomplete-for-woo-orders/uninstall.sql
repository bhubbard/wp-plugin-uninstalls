-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sacwo_review_notice_dismissed');
DELETE FROM wp_options WHERE option_name LIKE 'sacwo_active_tab_%';
DELETE FROM wp_options WHERE option_name LIKE 'smart_autocomplete_active_tab_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smart_autocomplete_processed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smart_autocomplete_processed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smart_autocomplete_processed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smart_autocomplete_processed');

