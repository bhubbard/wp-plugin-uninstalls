-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_intelliwidget');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('intelliwidget_all_links', 'intelliwidget_external_url', 'intelliwidget_all_titles', 'intelliwidget_alt_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('intelliwidget_all_links', 'intelliwidget_external_url', 'intelliwidget_all_titles', 'intelliwidget_alt_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('intelliwidget_all_links', 'intelliwidget_external_url', 'intelliwidget_all_titles', 'intelliwidget_alt_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('intelliwidget_all_links', 'intelliwidget_external_url', 'intelliwidget_all_titles', 'intelliwidget_alt_title');

