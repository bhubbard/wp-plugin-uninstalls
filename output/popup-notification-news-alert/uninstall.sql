-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popup_alert_display_options', 'popup_alert_social_options', 'popup_alert_input_examples');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_nelio_nice_title', '_popup_alert', 'sl-meta-box-sidebar-pages');
DELETE FROM wp_usermeta WHERE meta_key IN ('_nelio_nice_title', '_popup_alert', 'sl-meta-box-sidebar-pages');
DELETE FROM wp_termmeta WHERE meta_key IN ('_nelio_nice_title', '_popup_alert', 'sl-meta-box-sidebar-pages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_nelio_nice_title', '_popup_alert', 'sl-meta-box-sidebar-pages');

