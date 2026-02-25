-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_easy-post-types-fields_setup_wizard_seen', 'ept_review_notice_triggered', 'ept_review_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ept_taxonomies', '_ept_fields', '_ept_plural_name', '_ept_supports');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ept_taxonomies', '_ept_fields', '_ept_plural_name', '_ept_supports');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ept_taxonomies', '_ept_fields', '_ept_plural_name', '_ept_supports');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ept_taxonomies', '_ept_fields', '_ept_plural_name', '_ept_supports');

