-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wts_alias', 'wts_db', 'wts_oc_a2', 'wts_oc', 'wts_site_id', 'wts_web_stat_uid');

