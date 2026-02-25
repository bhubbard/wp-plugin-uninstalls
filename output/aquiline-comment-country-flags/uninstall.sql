-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aquiline_comment_country_flags_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aquiline_comment_country_flags_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('aquiline_comment_country_flags_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('aquiline_comment_country_flags_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aquiline_comment_country_flags_key');

