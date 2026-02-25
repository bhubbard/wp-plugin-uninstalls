-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pd_default_color', 'pd_default_color_array', 'pd_latestpoll', 'pd_recaptcha_enable', 'pd_recaptcha_sitekey', 'pd_recaptcha_secretkey', 'pd_currentpoll', 'pd_close', 'pd_logging_method', 'pd_cookielog_expiry', 'pd_allowtovote', 'pd_bar', 'pd_ans_sortby', 'pd_ans_sortorder', 'pd_ans_result_sortby', 'pd_ans_result_sortorder', 'poll_template_disable', 'poll_cookielog_expiry');

