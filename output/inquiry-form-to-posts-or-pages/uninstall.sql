-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('inq_header', 'inq_item_lable', 'inq_email_feild_lable', 'inq_name_feild_lable', 'inq_message_feild_lable', 'inq_email_to', 'inq_suc_msg', 'inq_err_captcha', 'inq_err_email', 'inq_err_name', 'inq_form_style');

