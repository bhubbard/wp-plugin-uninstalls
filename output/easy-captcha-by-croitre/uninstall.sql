-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ccs_easycap_app_secret', 'ccs_easycap_tok_secret', 'ccs_easycap_ans_secret', 'ccs_easycap_math_ops');

