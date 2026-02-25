-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('human_resources_department', 'hrm_deferred_admin_notices', 'hrm_version', 'other_hrms', 'hrm_daily', 'remote_logging_option', 'hrm_box_removed', 'logoff_logging_option', 'auto_logoff_option', 'post_measure_logging_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('in_office', 'Arbeitszeitbeginn', 'Pausenkonto', 'whow', 'is_ill', 'is_ill_until', 'Arbeitszeitbeginn_readable', 'in_pause', 'Pausenbeginn', 'Pausenbeginn_readable');
DELETE FROM wp_usermeta WHERE meta_key IN ('in_office', 'Arbeitszeitbeginn', 'Pausenkonto', 'whow', 'is_ill', 'is_ill_until', 'Arbeitszeitbeginn_readable', 'in_pause', 'Pausenbeginn', 'Pausenbeginn_readable');
DELETE FROM wp_termmeta WHERE meta_key IN ('in_office', 'Arbeitszeitbeginn', 'Pausenkonto', 'whow', 'is_ill', 'is_ill_until', 'Arbeitszeitbeginn_readable', 'in_pause', 'Pausenbeginn', 'Pausenbeginn_readable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('in_office', 'Arbeitszeitbeginn', 'Pausenkonto', 'whow', 'is_ill', 'is_ill_until', 'Arbeitszeitbeginn_readable', 'in_pause', 'Pausenbeginn', 'Pausenbeginn_readable');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'Arbeitszeit_gesamt_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_time_spend_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_time_spend_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_time_spend_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_time_spend_%';

