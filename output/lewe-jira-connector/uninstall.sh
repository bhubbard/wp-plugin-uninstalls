#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lewe-jira-connector_license_key_text'
wp option delete 'lewe-jira-connector_issuebutton_color_select'
wp option delete 'lewe-jira-connector_issuebutton_outline_checkbox'
wp option delete 'lewe-jira-connector_issuebutton_summary_chars_number'
wp option delete 'lewe-jira-connector_issuebutton_linktojira_checkbox'
wp option delete 'lewe-jira-connector_issueinline_color_select'
wp option delete 'lewe-jira-connector_issueinline_summary_chars_number'
wp option delete 'lewe-jira-connector_issueinline_linktojira_checkbox'
wp option delete 'lewe-jira-connector_issuepanel_color_select'
wp option delete 'lewe-jira-connector_issuepanel_show_summary_checkbox'
wp option delete 'lewe-jira-connector_issuepanel_show_description_checkbox'
wp option delete 'lewe-jira-connector_issuepanel_show_lastcomment_checkbox'
wp option delete 'lewe-jira-connector_issuepanel_description_chars_number'
wp option delete 'lewe-jira-connector_issuepanel_linktojira_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_issuetype_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_priority_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_key_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_summary_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_description_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_reporter_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_assignee_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_created_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_duedate_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_versions_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_fixversions_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_resolution_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_show_status_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_color_rows_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_startat_number'
wp option delete 'lewe-jira-connector_issuefilter_maxresults_number'
wp option delete 'lewe-jira-connector_issuefilter_showcount_checkbox'
wp option delete 'lewe-jira-connector_issuefilter_linktojira_checkbox'
wp option delete 'lewe-jira-connector_statuscolor_todo_select'
wp option delete 'lewe-jira-connector_statuscolor_inprogress_select'
wp option delete 'lewe-jira-connector_statuscolor_done_select'
wp option delete 'lewe-jira-connector_delete_on_uninstall_checkbox'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_statuscolor_todo_select'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_statuscolor_inprogress_select'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_statuscolor_done_select'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_issuetype_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_priority_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_key_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_summary_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_description_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_reporter_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_assignee_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_created_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_duedate_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_versions_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_fixversions_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_resolution_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_show_status_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_startat_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_maxresults_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_showcount_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_linktojira_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuefilter_color_rows_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_color_select'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_description_chars_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_linktojira_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_show_summary_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_show_description_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuepanel_show_lastcomment_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_color_select'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_summary_chars_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issueinline_linktojira_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_outline_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_issuebutton_linktojira_checkbox'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_delete_on_uninstall_checkbox'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jira_host_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jira_host_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jira_host_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jira_host_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jira_host_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jira_host_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jira_host_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jira_host_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jira_host_username'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jira_host_username'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jira_host_username'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jira_host_username'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jira_host_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jira_host_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jira_host_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jira_host_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jira_host_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jira_host_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jira_host_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jira_host_token'"
