-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lewe-jira-connector_license_key_text', 'lewe-jira-connector_issuebutton_color_select', 'lewe-jira-connector_issuebutton_outline_checkbox', 'lewe-jira-connector_issuebutton_summary_chars_number', 'lewe-jira-connector_issuebutton_linktojira_checkbox', 'lewe-jira-connector_issueinline_color_select', 'lewe-jira-connector_issueinline_summary_chars_number', 'lewe-jira-connector_issueinline_linktojira_checkbox', 'lewe-jira-connector_issuepanel_color_select', 'lewe-jira-connector_issuepanel_show_summary_checkbox', 'lewe-jira-connector_issuepanel_show_description_checkbox', 'lewe-jira-connector_issuepanel_show_lastcomment_checkbox', 'lewe-jira-connector_issuepanel_description_chars_number', 'lewe-jira-connector_issuepanel_linktojira_checkbox', 'lewe-jira-connector_issuefilter_show_issuetype_checkbox', 'lewe-jira-connector_issuefilter_show_priority_checkbox', 'lewe-jira-connector_issuefilter_show_key_checkbox', 'lewe-jira-connector_issuefilter_show_summary_checkbox', 'lewe-jira-connector_issuefilter_show_description_checkbox', 'lewe-jira-connector_issuefilter_show_reporter_checkbox', 'lewe-jira-connector_issuefilter_show_assignee_checkbox', 'lewe-jira-connector_issuefilter_show_created_checkbox', 'lewe-jira-connector_issuefilter_show_duedate_checkbox', 'lewe-jira-connector_issuefilter_show_versions_checkbox', 'lewe-jira-connector_issuefilter_show_fixversions_checkbox', 'lewe-jira-connector_issuefilter_show_resolution_checkbox', 'lewe-jira-connector_issuefilter_show_status_checkbox', 'lewe-jira-connector_issuefilter_color_rows_checkbox', 'lewe-jira-connector_issuefilter_startat_number', 'lewe-jira-connector_issuefilter_maxresults_number', 'lewe-jira-connector_issuefilter_showcount_checkbox', 'lewe-jira-connector_issuefilter_linktojira_checkbox', 'lewe-jira-connector_statuscolor_todo_select', 'lewe-jira-connector_statuscolor_inprogress_select', 'lewe-jira-connector_statuscolor_done_select', 'lewe-jira-connector_delete_on_uninstall_checkbox');
DELETE FROM wp_options WHERE option_name LIKE '%_statuscolor_todo_select';
DELETE FROM wp_options WHERE option_name LIKE '%_statuscolor_inprogress_select';
DELETE FROM wp_options WHERE option_name LIKE '%_statuscolor_done_select';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_issuetype_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_priority_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_key_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_summary_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_description_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_reporter_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_assignee_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_created_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_duedate_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_versions_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_fixversions_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_resolution_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_status_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_startat_number';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_maxresults_number';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_showcount_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_linktojira_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_color_rows_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_color_select';
DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_description_chars_number';
DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_linktojira_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_show_summary_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_show_description_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_show_lastcomment_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_color_select';
DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_summary_chars_number';
DELETE FROM wp_options WHERE option_name LIKE '%_issueinline_linktojira_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_outline_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_linktojira_checkbox';
DELETE FROM wp_options WHERE option_name LIKE '%_license_key_text';
DELETE FROM wp_options WHERE option_name LIKE '%_delete_on_uninstall_checkbox';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jira_host_description', 'jira_host_url', 'jira_host_username', 'jira_host_password', 'jira_host_token');
DELETE FROM wp_usermeta WHERE meta_key IN ('jira_host_description', 'jira_host_url', 'jira_host_username', 'jira_host_password', 'jira_host_token');
DELETE FROM wp_termmeta WHERE meta_key IN ('jira_host_description', 'jira_host_url', 'jira_host_username', 'jira_host_password', 'jira_host_token');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jira_host_description', 'jira_host_url', 'jira_host_username', 'jira_host_password', 'jira_host_token');

