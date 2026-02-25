-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dash_rewriter_settings_option_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dash_rewrite_rewrite', 'dash_rewritten');
DELETE FROM wp_usermeta WHERE meta_key IN ('dash_rewrite_rewrite', 'dash_rewritten');
DELETE FROM wp_termmeta WHERE meta_key IN ('dash_rewrite_rewrite', 'dash_rewritten');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dash_rewrite_rewrite', 'dash_rewritten');

