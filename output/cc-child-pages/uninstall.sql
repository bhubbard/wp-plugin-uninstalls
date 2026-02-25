-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cc_child_pages', 'ccchildpages_dash_stats');
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ccchildpages_hide_dash_widget');
DELETE FROM wp_usermeta WHERE meta_key IN ('ccchildpages_hide_dash_widget');
DELETE FROM wp_termmeta WHERE meta_key IN ('ccchildpages_hide_dash_widget');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ccchildpages_hide_dash_widget');

