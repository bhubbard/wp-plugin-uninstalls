-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mediactr_treshold', 'mediactr_posttypes', 'mediactr_posttype_activities', 'mediactr_login_points', 'mediactr_streaklevel', 'mediactr_badge_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gp_ld_cert_id', '_gp_ld_cert_activity', '_gp_ld_cert_threshold', 'cpd_activity', 'cpd_reading_time', 'ld_achievements_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gp_ld_cert_id', '_gp_ld_cert_activity', '_gp_ld_cert_threshold', 'cpd_activity', 'cpd_reading_time', 'ld_achievements_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gp_ld_cert_id', '_gp_ld_cert_activity', '_gp_ld_cert_threshold', 'cpd_activity', 'cpd_reading_time', 'ld_achievements_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gp_ld_cert_id', '_gp_ld_cert_activity', '_gp_ld_cert_threshold', 'cpd_activity', 'cpd_reading_time', 'ld_achievements_notifications');

