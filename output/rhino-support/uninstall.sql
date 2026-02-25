-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wprhinosupport_key', 'rhino_license_status', 'rhino_last_license_check', 'wprhinosupport_non_logged_departments', 'wprhinosupport_logged_departments', 'wprhinosupport_wlm_members_departments', 'wprhinosupport_create_thankyou', 'wprhinosupport_create_thankyou_value1', 'wprhinosupport_external_internal', 'wprhinosupport_create_thankyou_value2', 'wprhinosupport_scroller_color', 'wprhinosupport_scroller_pixel', 'wprhinosupport_scroller_online', 'wprhinosupport_scroller_offline', 'wprhinosupport_scroller_tab', 'wprhinosupport_supporttab_ids', 'wprhinosupport_remote_auth', 'wprhinosupport_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rhino-ticket');
DELETE FROM wp_usermeta WHERE meta_key IN ('rhino-ticket');
DELETE FROM wp_termmeta WHERE meta_key IN ('rhino-ticket');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rhino-ticket');

