-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_popup_sub_popup_show', 'cb_popup_sub_cookie_expired', 'cb_popup_sub_logo', 'cb_popup_sub_first_text', 'cb_popup_sub_second_text', 'cb_popup_sub_footer_text', 'cb_popup_sub_footer_link_text', 'cb_popup_sub_footer_link_url', 'cb_popup_sub_popup_width', 'cb_popup_sub_submit_button', 'cb_popup_sub_no_thanks', 'cb_popup_sub_form_action');

