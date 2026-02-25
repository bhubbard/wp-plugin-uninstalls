-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tsep_post_types', 'tsep_link_label', 'tsep_render_type');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_external_permalink', '_external_permalink_new');
DELETE FROM wp_usermeta WHERE meta_key IN ('_external_permalink', '_external_permalink_new');
DELETE FROM wp_termmeta WHERE meta_key IN ('_external_permalink', '_external_permalink_new');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_external_permalink', '_external_permalink_new');

