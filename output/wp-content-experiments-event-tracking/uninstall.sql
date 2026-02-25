-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpce_errors');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_experiments_wp_active', '_experiments_wp_code', '_wpgce_event_tracking_active', '_wpgce_event_tracking_code', '_wpgce_event_tracking_jquery_code', '_wpgce_event_tracking_category', '_wpgce_event_tracking_action', '_wpgce_event_tracking_label', '_wpgce_event_tracking_css_id', '_wpgce_event_tracking_css_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('_experiments_wp_active', '_experiments_wp_code', '_wpgce_event_tracking_active', '_wpgce_event_tracking_code', '_wpgce_event_tracking_jquery_code', '_wpgce_event_tracking_category', '_wpgce_event_tracking_action', '_wpgce_event_tracking_label', '_wpgce_event_tracking_css_id', '_wpgce_event_tracking_css_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('_experiments_wp_active', '_experiments_wp_code', '_wpgce_event_tracking_active', '_wpgce_event_tracking_code', '_wpgce_event_tracking_jquery_code', '_wpgce_event_tracking_category', '_wpgce_event_tracking_action', '_wpgce_event_tracking_label', '_wpgce_event_tracking_css_id', '_wpgce_event_tracking_css_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_experiments_wp_active', '_experiments_wp_code', '_wpgce_event_tracking_active', '_wpgce_event_tracking_code', '_wpgce_event_tracking_jquery_code', '_wpgce_event_tracking_category', '_wpgce_event_tracking_action', '_wpgce_event_tracking_label', '_wpgce_event_tracking_css_id', '_wpgce_event_tracking_css_class');

