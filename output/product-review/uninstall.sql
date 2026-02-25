-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbpr_activated', 'cbpr_survey', 'cbpr_survey_agreed');
DELETE FROM wp_options WHERE option_name LIKE '%.php';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cbpr_user_rating', 'cbpr_rating_pros', 'cbpr_rating_cons', 'cbpr_rating_features');
DELETE FROM wp_usermeta WHERE meta_key IN ('cbpr_user_rating', 'cbpr_rating_pros', 'cbpr_rating_cons', 'cbpr_rating_features');
DELETE FROM wp_termmeta WHERE meta_key IN ('cbpr_user_rating', 'cbpr_rating_pros', 'cbpr_rating_cons', 'cbpr_rating_features');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cbpr_user_rating', 'cbpr_rating_pros', 'cbpr_rating_cons', 'cbpr_rating_features');

