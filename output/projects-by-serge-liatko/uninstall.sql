-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prjcts_no_summary', 'prjcts_show_archive_links', 'prjcts_archive_links', 'prjcts_show_author_link', 'prjcts_author_label', 'prjcts_show_project_links', 'prjcts_project_link_text', 'prjcts_project_link_class', 'prjcts_hide_widgetarea', 'prjcts_no_css', 'prjcts_author_portfolio_slug', 'prjcts_uninstall', 'prjcts_reset_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_prjcts_project_link_url', '_prjcts_project_link_text', '_prjcts_project_link_title', '_prjcts_hide_project_link', '_prjcts_hide_widgetarea', '_project_summary');
DELETE FROM wp_usermeta WHERE meta_key IN ('_prjcts_project_link_url', '_prjcts_project_link_text', '_prjcts_project_link_title', '_prjcts_hide_project_link', '_prjcts_hide_widgetarea', '_project_summary');
DELETE FROM wp_termmeta WHERE meta_key IN ('_prjcts_project_link_url', '_prjcts_project_link_text', '_prjcts_project_link_title', '_prjcts_hide_project_link', '_prjcts_hide_widgetarea', '_project_summary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_prjcts_project_link_url', '_prjcts_project_link_text', '_prjcts_project_link_title', '_prjcts_hide_project_link', '_prjcts_hide_widgetarea', '_project_summary');

