-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('include-wp_head', 'include-wp_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('html5slide_type', 'html5slide_class', 'html5presentation_type', 'html5presentation_edit', 'associated_presentation_ID');
DELETE FROM wp_usermeta WHERE meta_key IN ('html5slide_type', 'html5slide_class', 'html5presentation_type', 'html5presentation_edit', 'associated_presentation_ID');
DELETE FROM wp_termmeta WHERE meta_key IN ('html5slide_type', 'html5slide_class', 'html5presentation_type', 'html5presentation_edit', 'associated_presentation_ID');
DELETE FROM wp_commentmeta WHERE meta_key IN ('html5slide_type', 'html5slide_class', 'html5presentation_type', 'html5presentation_edit', 'associated_presentation_ID');

