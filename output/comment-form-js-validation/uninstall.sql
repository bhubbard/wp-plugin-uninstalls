-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nv_comment_form_jv', 'nv_comment_form_jv_captch');

