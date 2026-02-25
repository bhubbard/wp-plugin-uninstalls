-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('has_given_projectpages_feedback', 'rewrite_rules', 'pp_permalink_root', 'pp_theme_opportunity', 'projectpages-hide-feedback-metabox');
DELETE FROM wp_options WHERE option_name LIKE 'pp-has-viewed-settings%';
DELETE FROM wp_options WHERE option_name LIKE '%_bk';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pp_theme_issue', 'pp_theme_opportunity', 'whpp_meta', 'whpp_meta_status', 'whpp_project_body', 'whpp_project_summary', 'noheader', 'whpp_project_log_title', 'whpp_project_log_date', 'whpp_project_log_icon', 'whpp_project_log_body', 'projectpageid', 'whpp_project_log_datetime', 'pp_hits', '_customize_changeset_uuid');
DELETE FROM wp_usermeta WHERE meta_key IN ('pp_theme_issue', 'pp_theme_opportunity', 'whpp_meta', 'whpp_meta_status', 'whpp_project_body', 'whpp_project_summary', 'noheader', 'whpp_project_log_title', 'whpp_project_log_date', 'whpp_project_log_icon', 'whpp_project_log_body', 'projectpageid', 'whpp_project_log_datetime', 'pp_hits', '_customize_changeset_uuid');
DELETE FROM wp_termmeta WHERE meta_key IN ('pp_theme_issue', 'pp_theme_opportunity', 'whpp_meta', 'whpp_meta_status', 'whpp_project_body', 'whpp_project_summary', 'noheader', 'whpp_project_log_title', 'whpp_project_log_date', 'whpp_project_log_icon', 'whpp_project_log_body', 'projectpageid', 'whpp_project_log_datetime', 'pp_hits', '_customize_changeset_uuid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pp_theme_issue', 'pp_theme_opportunity', 'whpp_meta', 'whpp_meta_status', 'whpp_project_body', 'whpp_project_summary', 'noheader', 'whpp_project_log_title', 'whpp_project_log_date', 'whpp_project_log_icon', 'whpp_project_log_body', 'projectpageid', 'whpp_project_log_datetime', 'pp_hits', '_customize_changeset_uuid');

