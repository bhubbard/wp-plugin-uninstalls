-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpasc_mode_select', 'wpasc_check_post', 'wpasc_check_page', 'wpasc_check_asciidoccss', 'wpasc_check_custum', 'wpasc_check_image', 'wpasc_check_highlight', 'wpasc_check_table_paragraph');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpasciidoc_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpasciidoc_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpasciidoc_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpasciidoc_checkbox');

