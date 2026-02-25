-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('oba_dab_ex_admin', 'oba_dab_ex_editor', 'oba_dab_ex_author', 'oba_dab_ex_con', 'oba_dab_ex_sub', 'oba_dab_ex_any_logged', 'oba_dab_ex_any_visitor', 'oba_dab_op_title', 'oba_dab_op_message', 'adab_cookie_name');

