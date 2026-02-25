-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rmp_options', 'rmp_customize_strings', 'rmp_security', 'rmp_admin_notices', 'rmp_bulk_rate_flag', 'rmp_version', 'rmp_license_key');
DELETE FROM wp_options WHERE option_name LIKE 'yolo-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rmp_avg_rating', 'rmp_vote_count', 'rmp_rating_val_sum', 'rmp_feedback_val', 'rmp_feedback_val_new');
DELETE FROM wp_usermeta WHERE meta_key IN ('rmp_avg_rating', 'rmp_vote_count', 'rmp_rating_val_sum', 'rmp_feedback_val', 'rmp_feedback_val_new');
DELETE FROM wp_termmeta WHERE meta_key IN ('rmp_avg_rating', 'rmp_vote_count', 'rmp_rating_val_sum', 'rmp_feedback_val', 'rmp_feedback_val_new');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rmp_avg_rating', 'rmp_vote_count', 'rmp_rating_val_sum', 'rmp_feedback_val', 'rmp_feedback_val_new');

