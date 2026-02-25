-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('job_manager_form_contact', 'resume_manager_form_contact', 'resume_manager_force_application', 'ninja_forms_version', 'ninja_forms_load_deprecated');

