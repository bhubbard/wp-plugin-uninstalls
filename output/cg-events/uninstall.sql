-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cg_events_shortcode_custom_css_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cg_event_type', '_cg_event_start_date', '_cg_event_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cg_event_type', '_cg_event_start_date', '_cg_event_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cg_event_type', '_cg_event_start_date', '_cg_event_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cg_event_type', '_cg_event_start_date', '_cg_event_end_date');

