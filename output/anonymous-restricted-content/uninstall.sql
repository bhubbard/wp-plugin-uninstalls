-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arc_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('arc_restricted_post', 'arc_restricted_category', 'arc_restricted_category_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('arc_restricted_post', 'arc_restricted_category', 'arc_restricted_category_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('arc_restricted_post', 'arc_restricted_category', 'arc_restricted_category_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('arc_restricted_post', 'arc_restricted_category', 'arc_restricted_category_value');

