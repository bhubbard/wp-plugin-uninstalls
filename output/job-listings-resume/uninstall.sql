-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jlt_resume', 'jlt_resume_custom_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_submitting_key', 'candidate_resume', '_in_review', '_jlt_file_cv', '_viewable', '_education_school', '_education_qualification', '_education_date', '_education_note', '_experience_employer', '_experience_job', '_experience_date', '_experience_note', '_skill_name', '_skill_percent', '_new_resume_emailed', '_resume', '_resume_added', '_candidate_package');
DELETE FROM wp_usermeta WHERE meta_key IN ('_submitting_key', 'candidate_resume', '_in_review', '_jlt_file_cv', '_viewable', '_education_school', '_education_qualification', '_education_date', '_education_note', '_experience_employer', '_experience_job', '_experience_date', '_experience_note', '_skill_name', '_skill_percent', '_new_resume_emailed', '_resume', '_resume_added', '_candidate_package');
DELETE FROM wp_termmeta WHERE meta_key IN ('_submitting_key', 'candidate_resume', '_in_review', '_jlt_file_cv', '_viewable', '_education_school', '_education_qualification', '_education_date', '_education_note', '_experience_employer', '_experience_job', '_experience_date', '_experience_note', '_skill_name', '_skill_percent', '_new_resume_emailed', '_resume', '_resume_added', '_candidate_package');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_submitting_key', 'candidate_resume', '_in_review', '_jlt_file_cv', '_viewable', '_education_school', '_education_qualification', '_education_date', '_education_note', '_experience_employer', '_experience_job', '_experience_date', '_experience_note', '_skill_name', '_skill_percent', '_new_resume_emailed', '_resume', '_resume_added', '_candidate_package');

