-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uwaff_current_page', 'uwaff_username', 'uwaff_password', 'uwaff_button_text', 'uwaff_coupon_code', 'uwaff_aff_id', 'uwaff_token');

