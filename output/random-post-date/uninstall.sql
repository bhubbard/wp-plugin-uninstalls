-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rndpd_date1', 'rndpd_date2', 'rndpd_post_type', 'rndpd_set_modified_date', 'rndpd_exclude_ids');

