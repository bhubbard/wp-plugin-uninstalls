-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('georgian_fonts_options', 'georgian_fonts_analytics_uuid', 'georgian_fonts_analytics_status', 'georgian_fonts_analytics_last_sent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gf_dismissed_widgets', 'metaboxhidden_dashboard', 'closedpostboxes_dashboard');
DELETE FROM wp_usermeta WHERE meta_key IN ('gf_dismissed_widgets', 'metaboxhidden_dashboard', 'closedpostboxes_dashboard');
DELETE FROM wp_termmeta WHERE meta_key IN ('gf_dismissed_widgets', 'metaboxhidden_dashboard', 'closedpostboxes_dashboard');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gf_dismissed_widgets', 'metaboxhidden_dashboard', 'closedpostboxes_dashboard');

