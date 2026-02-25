-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wlsm_delete_on_uninstall', 'wlsm_current_session', 'wlsm_currency', 'wlsm_date_format', 'wlsm_gdpr_enable');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wlsm_school_id', 'wlsm_current_session');
DELETE FROM wp_usermeta WHERE meta_key IN ('wlsm_school_id', 'wlsm_current_session');
DELETE FROM wp_termmeta WHERE meta_key IN ('wlsm_school_id', 'wlsm_current_session');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wlsm_school_id', 'wlsm_current_session');

