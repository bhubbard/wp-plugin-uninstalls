-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clicface_organi_settings', 'clicface_trombi_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('orgchart_title', 'orgchart_boss', 'orgchart_data', 'label_title', 'display_page_link', 'link_page_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('orgchart_title', 'orgchart_boss', 'orgchart_data', 'label_title', 'display_page_link', 'link_page_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('orgchart_title', 'orgchart_boss', 'orgchart_data', 'label_title', 'display_page_link', 'link_page_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('orgchart_title', 'orgchart_boss', 'orgchart_data', 'label_title', 'display_page_link', 'link_page_id');

