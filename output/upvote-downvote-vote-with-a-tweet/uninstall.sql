-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('udv:globalOptions', 'udv:widgetOptions', 'udv:bannerOptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('udv_formID_main_topicid', 'udv_formID_main_format', 'udv_formID_main_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('udv_formID_main_topicid', 'udv_formID_main_format', 'udv_formID_main_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('udv_formID_main_topicid', 'udv_formID_main_format', 'udv_formID_main_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('udv_formID_main_topicid', 'udv_formID_main_format', 'udv_formID_main_position');

