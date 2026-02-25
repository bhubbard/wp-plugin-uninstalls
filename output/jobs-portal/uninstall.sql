-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weblizar_flush_rewrite_rules_flag', 'weblizar_general');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('weblizar_candidate_user_id', 'weblizar_candidate_personal', 'weblizar_candidate_document', 'weblizar_candidate_work_experience', 'weblizar_candidate_employment', 'weblizar_candidate_education', 'weblizar_candidate_skills', 'weblizar_candidate_certification', 'weblizar_candidate_desired_job', 'weblizar_job_work_experience', 'weblizar_job_salary', 'weblizar_signup_as');
DELETE FROM wp_usermeta WHERE meta_key IN ('weblizar_candidate_user_id', 'weblizar_candidate_personal', 'weblizar_candidate_document', 'weblizar_candidate_work_experience', 'weblizar_candidate_employment', 'weblizar_candidate_education', 'weblizar_candidate_skills', 'weblizar_candidate_certification', 'weblizar_candidate_desired_job', 'weblizar_job_work_experience', 'weblizar_job_salary', 'weblizar_signup_as');
DELETE FROM wp_termmeta WHERE meta_key IN ('weblizar_candidate_user_id', 'weblizar_candidate_personal', 'weblizar_candidate_document', 'weblizar_candidate_work_experience', 'weblizar_candidate_employment', 'weblizar_candidate_education', 'weblizar_candidate_skills', 'weblizar_candidate_certification', 'weblizar_candidate_desired_job', 'weblizar_job_work_experience', 'weblizar_job_salary', 'weblizar_signup_as');
DELETE FROM wp_commentmeta WHERE meta_key IN ('weblizar_candidate_user_id', 'weblizar_candidate_personal', 'weblizar_candidate_document', 'weblizar_candidate_work_experience', 'weblizar_candidate_employment', 'weblizar_candidate_education', 'weblizar_candidate_skills', 'weblizar_candidate_certification', 'weblizar_candidate_desired_job', 'weblizar_job_work_experience', 'weblizar_job_salary', 'weblizar_signup_as');

