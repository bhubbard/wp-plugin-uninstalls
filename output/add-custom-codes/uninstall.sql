-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('custom-css-codes-input', 'custom-footer-codes-input', 'custom-header-codes-input', 'accodes_global_css_on_footer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accodes_hide_header', '_accodes_header_metabox', 'accodes_hide_footer', '_accodes_footer_metabox', '_accodes_code', '_accodes_snippet_language', '_accodes_snippet_location', '_accodes_snippet_active', '_accodes_snippet_notes', '_accodes_snippet_tags', '_accodes_snippet_error');
DELETE FROM wp_usermeta WHERE meta_key IN ('accodes_hide_header', '_accodes_header_metabox', 'accodes_hide_footer', '_accodes_footer_metabox', '_accodes_code', '_accodes_snippet_language', '_accodes_snippet_location', '_accodes_snippet_active', '_accodes_snippet_notes', '_accodes_snippet_tags', '_accodes_snippet_error');
DELETE FROM wp_termmeta WHERE meta_key IN ('accodes_hide_header', '_accodes_header_metabox', 'accodes_hide_footer', '_accodes_footer_metabox', '_accodes_code', '_accodes_snippet_language', '_accodes_snippet_location', '_accodes_snippet_active', '_accodes_snippet_notes', '_accodes_snippet_tags', '_accodes_snippet_error');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accodes_hide_header', '_accodes_header_metabox', 'accodes_hide_footer', '_accodes_footer_metabox', '_accodes_code', '_accodes_snippet_language', '_accodes_snippet_location', '_accodes_snippet_active', '_accodes_snippet_notes', '_accodes_snippet_tags', '_accodes_snippet_error');

