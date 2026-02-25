-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wvc_plugin');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wvc_form_title', 'wvc_form_text', 'wvc_form_button_text', 'style', 'type', 'b_b_c', 'b_t_c', 'f_tt_c', 'f_st_c', 'f_bg_c', 'f_br_c', 'automation_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wvc_form_title', 'wvc_form_text', 'wvc_form_button_text', 'style', 'type', 'b_b_c', 'b_t_c', 'f_tt_c', 'f_st_c', 'f_bg_c', 'f_br_c', 'automation_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wvc_form_title', 'wvc_form_text', 'wvc_form_button_text', 'style', 'type', 'b_b_c', 'b_t_c', 'f_tt_c', 'f_st_c', 'f_bg_c', 'f_br_c', 'automation_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wvc_form_title', 'wvc_form_text', 'wvc_form_button_text', 'style', 'type', 'b_b_c', 'b_t_c', 'f_tt_c', 'f_st_c', 'f_bg_c', 'f_br_c', 'automation_id');

