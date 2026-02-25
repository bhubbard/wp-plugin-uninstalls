-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbxpoll_flush_rewrite_rules', 'cbxpoll_version', 'cbxpoll_emails', 'cbxpoll_email_tpl', 'cbxpoll_global_settings', 'cbxpoll_activated_notice', 'cbxpoll_flush_rewrite_rules', 'cbxpoll_upgraded_notice', 'cbxpollproaddon_forcedactivated_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cbxpoll_total_votes', '_cbxpoll_end_date', '_cbxpoll_start_date', '_cbxpoll_never_expire', '_cbxpoll_answer', '_cbxpoll_answer_color', '_cbxpoll_answer_extra', '_cbxpoll_user_roles', '_cbxpoll_show_result_before_expire', '_cbxpoll_result_chart_type', '_cbxpoll_content', '_cbxpoll_multivote');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cbxpoll_total_votes', '_cbxpoll_end_date', '_cbxpoll_start_date', '_cbxpoll_never_expire', '_cbxpoll_answer', '_cbxpoll_answer_color', '_cbxpoll_answer_extra', '_cbxpoll_user_roles', '_cbxpoll_show_result_before_expire', '_cbxpoll_result_chart_type', '_cbxpoll_content', '_cbxpoll_multivote');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cbxpoll_total_votes', '_cbxpoll_end_date', '_cbxpoll_start_date', '_cbxpoll_never_expire', '_cbxpoll_answer', '_cbxpoll_answer_color', '_cbxpoll_answer_extra', '_cbxpoll_user_roles', '_cbxpoll_show_result_before_expire', '_cbxpoll_result_chart_type', '_cbxpoll_content', '_cbxpoll_multivote');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cbxpoll_total_votes', '_cbxpoll_end_date', '_cbxpoll_start_date', '_cbxpoll_never_expire', '_cbxpoll_answer', '_cbxpoll_answer_color', '_cbxpoll_answer_extra', '_cbxpoll_user_roles', '_cbxpoll_show_result_before_expire', '_cbxpoll_result_chart_type', '_cbxpoll_content', '_cbxpoll_multivote');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%answer_color';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%answer_color';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%answer_color';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%answer_color';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%answer_extra';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%answer_extra';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%answer_extra';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%answer_extra';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%answer';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%answer';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%answer';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%answer';

