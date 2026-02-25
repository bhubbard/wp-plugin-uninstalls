-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_cpt_support', 'cc_admin_notices', 'ufel_later', 'ufel_vote');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('__fael_form_handle', '__fael_form_page_id', '__fael_can_edit_user', '__fael_can_delete_user', '__fael_term_author', '__fael_can_edit_term', '__fael_can_delete_term', '__fael_can_edit_post', '__fael_can_delete_post', 'fael_forms', 'fael_widgets');
DELETE FROM wp_usermeta WHERE meta_key IN ('__fael_form_handle', '__fael_form_page_id', '__fael_can_edit_user', '__fael_can_delete_user', '__fael_term_author', '__fael_can_edit_term', '__fael_can_delete_term', '__fael_can_edit_post', '__fael_can_delete_post', 'fael_forms', 'fael_widgets');
DELETE FROM wp_termmeta WHERE meta_key IN ('__fael_form_handle', '__fael_form_page_id', '__fael_can_edit_user', '__fael_can_delete_user', '__fael_term_author', '__fael_can_edit_term', '__fael_can_delete_term', '__fael_can_edit_post', '__fael_can_delete_post', 'fael_forms', 'fael_widgets');
DELETE FROM wp_commentmeta WHERE meta_key IN ('__fael_form_handle', '__fael_form_page_id', '__fael_can_edit_user', '__fael_can_delete_user', '__fael_term_author', '__fael_can_edit_term', '__fael_can_delete_term', '__fael_can_edit_post', '__fael_can_delete_post', 'fael_forms', 'fael_widgets');

