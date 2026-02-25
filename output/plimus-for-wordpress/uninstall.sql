-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pn_reg_email_on', 'pn_tpl_send', 'pn_reg_user_on', 'pn_tpl_name', 'pn_tpl_email', 'pn_email_template', 'pn_tpl_email_text', 'pn_tpl_email_subject_text', 'pn_tpl_html', 'pn_register_role');

